

















<cfset dsn = "Amazon_certs">
<cfquery name="CertsCount" datasource="#dsn#">
	SELECT Library_Web_Test.dbo.get_available_certs_count() AS available
</cfquery>










<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- /14090.cfm -->
<head><!-- PageID 14090 - published by RedDot 7.5 - 7.5.2.17 - 23509 -->
<title>UCLA Library



| UCLA Common Book


</title>
<meta name="Description" content="UCLA Library UCLA Common Book UCLA Common Book">
<link href="http://www.library.ucla.edu/css/global.css" rel="stylesheet" type="text/css">
<link href="http://www.library.ucla.edu/css/wht.css" rel="stylesheet" type="text/css">


    <script language="JavaScript1.2" type="text/javascript">
<!--
dqm__codebase = "http://www.library.ucla.edu/menus/script/" //script folder location
//-->
</script>
<script language="JavaScript1.2" src="http://www.library.ucla.edu/menus/data_Global.js" type="text/javascript"></script>
<script language="JavaScript1.2" src="http://www.library.ucla.edu/menus/script/dqm_loader.js" type="text/javascript"></script>


<script language="JavaScript" src="/javascript/questions.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://www.library.ucla.edu/javascript/lib.js"></script>
    <script type="text/javascript" src="http://www.library.ucla.edu/javascript/popup.js"></script>
    <script type="text/javascript" src="http://www.library.ucla.edu/javascript/listener.js"></script>

<script type="text/javascript" src="http://www.library.ucla.edu/javascript/addEvent.js"></script>
<script type="text/javascript" src="http://www.library.ucla.edu/javascript/libsurvey.js"></script>

</head>
<body>






<div id="header">

<table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
 <tr>
  <td width="600">


<div><a href="http://www.library.ucla.edu"><img src="http://www.library.ucla.edu/images/logo_blu_bar.gif" alt="UCLA Library" width="150" height="35" border="0"></a><img src="http://reddot.library.ucla.edu/images/banner_commonbook.gif" alt="UCLA Common Book" border="0"> </div>

<!--
<div><a href="http://reddot.library.ucla.edu"><img src="http://www.library.ucla.edu/images/logo_blu_bar.gif" alt="UCLA Library" width="150" height="35" border="0"></a><img src="http://www.library.ucla.edu/images/banner_commonbook.gif" alt="UCLA Common Book" border="0"> </div>
-->

  </td>
  <td width="150">
<!-- updated per dig ref request 10 1 2009
<a href="http://www.library.ucla.edu/questions/index.cfm" onmouseout="turnOff('questions')" onmouseover="turnOn('questions')">
<img src="http://www.library.ucla.edu//images/b_questions_0.gif" alt="Questions? Ask Us!" name="image1" width="150" height="35" border="0" id="questions"></a>

updated per dig ref request 10 1 2009 -->


<table border="0" cellpadding="0" cellspacing="0" width="150">
     <tr>
   <td colspan="4"><a href="http://www.library.ucla.edu/questions/index.cfm"><img name="b_questions_r1_c1" src="http://www.library.ucla.edu/images/b_questions_r1_c1.gif" width="150" height="22" border="0" id="b_questions_r1_c1" alt="Questions Ask Us" /></a></td>
      </tr>
    <tr>
    <td>
        <a href="http://www.library.ucla.edu/questions/index.cfm"><img name="b_questions_r2_c1" src="http://www.library.ucla.edu/images/b_questions_r2_c1.gif" width="31" height="13" border="0" id="b_questions_r2_c1" alt="Questions Ask Us" /></a>
        </td>
    <td>
        <a href='http://www.library.ucla.edu/questions/14020.cfm'><img name="b_questions_r2_c2" src="http://www.library.ucla.edu/images/b_questions_r2_c2.gif" width="50" height="13" border="0" id="b_questions_r2_c2" alt="Chat Live with Us" /></a>
        </td>
    <td>
        <a href='http://www.library.ucla.edu/questions/1690.cfm'><img name="b_questions_r2_c3" src="http://www.library.ucla.edu/images/b_questions_r2_c3.gif" width="34" height="13" border="0" id="b_questions_r2_c3" alt="Email Your Question to Us" /></a>
        </td>
    <td>
        <a href='http://www.library.ucla.edu/questions/1689.cfm'><img name="b_questions_r2_c4" src="http://www.library.ucla.edu/images/b_questions_r2_c4.gif" width="35" height="13" border="0" id="b_questions_r2_c4" alt="Speak with Us" /></a>
        </td>
        </tr>
  </table>



</td>






 </tr>
</table>


</div>


<div id="menu_global">
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
 <tr>
  <td align="center"><a href="http://www.library.ucla.edu/search/index.cfm"><img src="http://www.library.ucla.edu/images/m_Search_blk.gif" alt="Search and Find" name="menu0" width="150" height="25" border="0"
id="menu0" onMouseOver="showMenu(event)" onMouseOut="hideMenu(event)"></a><a href="http://www.library.ucla.edu/service/index.cfm"><img
src="http://www.library.ucla.edu/images/m_Services_blk.gif" alt="Services" name="menu1" width="150" height="25" border="0" id="menu1"
onMouseOver="showMenu(event)" onMouseOut="hideMenu(event)"></a><a href="http://www.library.ucla.edu/libraries/index.cfm"><img
src="http://www.library.ucla.edu/images/m_Libraries_wht.gif" alt="Libraries and Collections" name="menu2" width="150" height="25" border="0" id="menu2"
onMouseOver="showMenu(event)" onMouseOut="hideMenu(event)"></a><a href="http://www.library.ucla.edu/about/index.cfm"><img
src="http://www.library.ucla.edu/images/m_About_blk.gif" alt="About" name="menu3" width="150" height="25" border="0" id="menu3"
onMouseOver="showMenu(event)" onMouseOut="hideMenu(event)"></a><a href="http://www.library.ucla.edu/news/index.cfm"><img
src="http://www.library.ucla.edu/images/m_News_blk.gif" alt="News, Events, Exhibits" name="menu4" width="150" height="25" border="0" id="menu4"
onMouseOver="showMenu(event)" onMouseOut="hideMenu(event)"></a></td>
 </tr>
</table>
</div>


<div id="live_area">
<!-- begin live area -->


<table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
 <tr>
  <td width="300" height="50" class="b0110">



<!-- page title -->

<h1>UCLA Common Book</h1>



  </td>
  <td width="450" height="50" valign="bottom" nowrap="nowrap" class="b0010"><br>
<!-- section menu -->

  </td>
 </tr>
 <tr valign="top">
  <td width="299" class="b0100">



<!-- begin closed area -->



<!--
<div class="alert_box">
<p><strong><a href="/holiday-closure/index.cfm">Campus Libraries Closed December&nbsp;18 - January&nbsp;2</a></strong>&nbsp;&lt;&lt;
<a href="/holiday-closure/index.cfm">more info</a>&gt;&gt;</p>
</div>
-->

<!-- end closed area -->
<!-- begin lit announcement area
<div class="alert_box">
<p>
<strong><a href="http://www.library.ucla.edu/special/13430.cfm">Library System Maintenance: June 14</a></strong> &lt;&lt;<a href="http://www.library.ucla.edu/special/13430.cfm">more info</a>&gt;&gt;
</p>
</div>
 end lit announcement area -->















<table width="299" border="0" cellpadding="0" cellspacing="0">
 <tr valign="top">
  <td width="299" height="20" align="left"><a href="http://www.library.ucla.edu/"><img src="http://www.library.ucla.edu/images/i_up_level_blk.gif" alt="Go up one level" width="7" height="7" border="0" hspace="10"></a>&nbsp;</td>
 </tr>
</table>


<!-- begin links -->


<table width="299" border="0" cellpadding="0" cellspacing="0" >














</table>
<!-- end links -->

<!-- open lws survey   -->
<!-- begin closed area









<html>
<head>
	<title>Sample Survey</title>
</head>
<body>
<div class="form_b1010">
<form name="survey" action="http://www2.library.ucla.edu/service/12847.cfm"  method="post">





	<input type="hidden" name="survey_id" value="4">
	<input type="hidden" name="source_url" value="reddot.library.ucla.edu/14090.cfm">




<div class="form_field_caption"><h3>Web Site Survey</h3></div>


		<div class="form_field_caption">Do you find this page useful?</div>

			<select name="q2">

				<option value="Yes">Yes</option>

				<option value="No">No</option>

			</select>

		<br>


		<div class="form_field_caption">Why or Why Not?</div>

			 <textarea name="q3" rows="4" cols="36"></textarea>

		<br>
	<br>
	<input type="submit" name="submit" value="Send">

</form></div>
</body>
</html>
 -->
<!-- close lws survey   -->


  </td>

  <td width="450">






<div class="copy">
<!-- begin page copy -->







<H2>UCLA Common Book E-book Giveaway </H2>
<P>The UCLA Library is giving away five hundred e-book copies of this year's <a href="http://www.orl.ucla.edu/commonbook/ " target="_new">UCLA Common Book</a>, <EM><a href="http://www.orl.ucla.edu/commonbook/the-immortal-life" target="_new">The Immortal Life of Henrietta Lacks</a></EM>. All incoming freshmen and transfer students are eligible.
<P>To register, fill out the online form below.
<P>The e-books have been purchased by the Library from Amazon and can be read on devices including a Kindle, laptop, desktop, iPhone, iPod Touch, iPad, BlackBerry, and Android. Winners must have an Amazon.com account in order to download the e-book.
<P>For further information, contact the UCLA Common Book staff.</P>
<!-- end page copy -->
</div>









<div class="form_b1010">



<cfoutput query="CertsCount">
<cfif CertsCount.available eq 0>
<p>Sorry, but all five hundred e-books have been given away.</p>
<cfelse>
<p>There are #CertsCount.available# certificates left</p>
<!-- <p>Enter your credentials below to see if you are eligable to receive one</p> -->




<form action="verify.cfm" method="post">

<div class="form_field_caption"><em style="color: red; font-weight: bold;">*</em>First name</div>
 <input type="text" name="fname" value=""/>

<div class="form_field_caption"><em style="color: red; font-weight: bold;">*</em>Last name</div>
 <input type="text" name="lname" value=""/>

<div class="form_field_caption"><em style="color: red; font-weight: bold;">*</em>Your university ID</div>
 <input type="text" name="uid" value="" size="9" maxLength="9"/></p>

<div class="form_field_caption"><em style="color: red; font-weight: bold;">*</em>Your email address</div>
 <input type="text" name="email" value=""/></p>
<div class="form_field_caption"><em style="color: red; font-weight: bold;">*</em>required field</div>
<div class="form_field_caption"><input type="submit" value="Submit"/></p>
</form>
</cfif>
</cfoutput>

</div>




  </td>
 </tr>
</table>


<!-- end live area -->
</div>


<!-- begin footer -->

  <table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td nowrap="nowrap">


<div id="footer">

<p>
Updated: Friday, June 24, 2011 9:31<br>
<a href="/privacy/index.cfm">Privacy Policy</a> | <a href="/about/6109.cfm">User Rights and Responsibilities</a> | <a href="/about/2172.cfm">Contact the Web Administrator</a> | <a href="/development/index.cfm">Giving to the Library</a> | <a href="/privacy/11673.cfm">Creative Commons License</a>
</p>

</div>


        </td>
      </tr>
    </table>

<!-- end footer -->



<!-- 20071004 Inserted by darrowco for ccthompson and chunt: google web analytics -->
<!-- 20080725 Update from chunt -->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-1003161-4");
pageTracker._setDomainName("library.ucla.edu");
pageTracker._initData();
pageTracker._trackPageview();
</script>


</body>
</html>

</!--RDExecute=cfm-->