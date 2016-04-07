package edu.ucla.library.libservices.amazon;

import java.io.File;

public class Class1
{
  public Class1()
  {
  }

  public static void main( String[] args )
  {
    File directory;
    directory = new File("P:\\jars");
    String[] contents;
    contents = directory.list();
    
    for ( String theFile : contents )
      System.out.println(theFile);
  }
}
