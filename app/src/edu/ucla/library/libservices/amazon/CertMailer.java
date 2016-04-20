package edu.ucla.library.libservices.amazon;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class CertMailer
{
  private static final String ISSUED_QUERY = 
    "SELECT COUNT(*) FROM drickard1967.certificates WHERE uid IS NOT NULL AND uid <> '-1'";
  private static final String AVAILABLE_QUERY = 
    "SELECT COUNT(*) FROM drickard1967.certificates WHERE uid IS NULL";
  private static final String HELD_QUERY = 
    "SELECT COUNT(*) FROM drickard1967.certificates WHERE uid = '-1'";
  private static final DateFormat DATE_OUTPUT = 
    new SimpleDateFormat( "MM/dd/yyyy" );
  private static DriverManagerDataSource ds;

  public CertMailer()
  {
  }

  public static void main( String[] args )
  {
    int issued;
    int available;
    int held;

    issued = 0;
    available = 0;
    held = 0;

    try
    {
      makeConnection();

      issued = new JdbcTemplate( ds ).queryForInt( ISSUED_QUERY );
      available = new JdbcTemplate( ds ).queryForInt( AVAILABLE_QUERY );
      held = new JdbcTemplate( ds ).queryForInt( HELD_QUERY );

      InternetAddress[] address;
      //InternetAddress[] ccaddress;
      Message message;
      MimeBodyPart content;
      Multipart letter;
      Properties sysProps;
      Session mailSession;

      sysProps = System.getProperties();
      sysProps.put( "mail.smtp.host", "em.library.ucla.edu" );
      mailSession = Session.getDefaultInstance( sysProps, null );
      message = new MimeMessage( mailSession );
      message.setFrom( new InternetAddress( "noreply@library.ucla.edu" ) );
      address = new InternetAddress[]
          { new InternetAddress( "glt@library.ucla.edu" ), 
            new InternetAddress( "farb@library.ucla.edu" ) };
      message.setRecipients( Message.RecipientType.TO, address );
      /*ccaddress = new InternetAddress[]
          { new InternetAddress( "drickard1967@library.ucla.edu" ), 
            new InternetAddress( "lvogelgesang@orl.ucla.edu" ) };
      message.setRecipients( Message.RecipientType.CC, ccaddress );*/
      message.setSubject( "Amazon Certificates Activity for " + 
                          DATE_OUTPUT.format( new Date() ) );
      message.setSentDate( new Date() );
      content = new MimeBodyPart();
      content.setText( "Issued count = " + issued + 
                       "\nAvailable count = " + available + 
                       "\nHeld count = " + held + "." );
      letter = new MimeMultipart();
      letter.addBodyPart( content );
      message.setContent( letter );
      Transport.send( message );
    }
    catch ( Exception e )
    {
      e.printStackTrace();
      /*BufferedWriter writer;

      try
      {
        writer = 
            new BufferedWriter( new FileWriter( new File( "C:\\amazon\\errors.log" ) ) );
        writer.write( e.getMessage() );
        writer.newLine();
        writer.flush();
        writer.close();
      }
      catch ( IOException ioe )
      {
        ioe.printStackTrace();
      }*/
    }
  }

  private static void makeConnection()
  {
    ds = new DriverManagerDataSource();
    ds.setDriverClassName( "com.microsoft.sqlserver.jdbc.SQLServerDriver" );
    ds.setUrl( "url" );
    ds.setUsername( "user" );
    ds.setPassword( "pwd" );
  }
}
