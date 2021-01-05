<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="rea" class="db.onBean" />
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../ISSCSS.css" rel="stylesheet" type="text/css">
<link href="../port.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--

body {
	background-color: #EFF2F7;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>
<body >

<FORM name="refrm" METHOD=post  ACTION="/OnlineTest/itemaddServlet?sugg=book">

<table width="100%"  border="0" cellpadding="0" cellspacing="0" background="../images/bgpatch.jpg">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="center">
    
      <span class="ChannelLabel">Enter Book Details .All thefields are mandatory : </span></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5%">&nbsp;</td>
        <td width="35%" valign="top" class="HighLight"><div align="right">Book  Id:&nbsp;</div></td>
        <td width="49%"><input  name=txt_id class="border"></td>
        <td width="5%">&nbsp;</td>
        <td width="6%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right">Title:</div></td>
        <td><input  name=txt_title class="border" id="txt_title"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right">Author:</div></td>
        <td><input  name=txt_aut class="border" id="txt_aut"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right"></div></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right">Desc:&nbsp;</div></td>
        <td><textarea name=txt_desc rows="5" class="border" id=textarea2>
        </textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right"></div></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right">Price:&nbsp;</div></td>
        <td><input name=txt_price class="border"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right"></div></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right">Quantity:&nbsp;</div></td>
        <td><input  name=txt_qty class="border"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right">Category:&nbsp;</div></td>
        <td><select name="txt_category" class="border">
			 <option></option>		
		     <option value="Java">Java</option>
			 <option value="J2EE">J2EE</option>
			 <option value="VB.NET">VB.NET</option>
			 <option value="ASP.NET">ASP.NET</option>			 		 			 
        </select></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right"></div></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right">ImageUrl:&nbsp;</div></td>
        <td><input  name=txt_image class="border"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
		 <td>&nbsp;</td>
      </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td valign="top" class="HighLight">&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    <td>&nbsp;</td>
	    </tr>
	  <tr>
        <td>&nbsp;</td>
        <td valign="top" class="HighLight"><div align="right">DeliveryTimeIndays:&nbsp;</div></td>
        <td><input  name=txt_days class="border"></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><input id=Add type=submit value=Add name=Add></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
</BODY>
</HTML>
