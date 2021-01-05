<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" /> 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="ISSCSS.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
body {
	background-color: #b6c7e5;
}
-->
</style>
<link href="../ISSCSS.css" rel="stylesheet" type="text/css">
</head>

<body>

<p>&nbsp;</p>
<p align="center" class="GreaterThan"> Online course Offered </p>
<p>&nbsp;</p>
<form action="/OnlineTest/CourseInsert" method="post">
<table width="500" height="231" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#5350b9">
  <tr bgcolor="#5350b9">
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="131" height="24" class="menuitems">course ID</td>
	<%  int id=obj.getMaxId("course","COURSEID");
	if(id==1) id=1000;%>
    <td width="200"><input name="cid" type="text"  value="<%= id%>" readonly></td>
  </tr>
  <tr>
    <td height="24" class="menuitems">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24" class="menuitems">Course Name </td>
    <td><input name="cname" type="text"></td>
  </tr>
  <tr>
    <td height="24" class="menuitems">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24" class="menuitems">Duration</td>
    <td><input name="cdur" type="text" "></td>
  </tr>
  <tr>
    <td height="24" class="menuitems">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24" class="menuitems">Cost</td>
    <td><input name="cost" type="text" ></td>
  </tr>
  <tr>
    <td height="24" class="menuitems">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24" class="menuitems">Description</td>
    <td><textarea name="descp" ></textarea></td>
  </tr>
  <tr>
    <td height="24" colspan="2" class="MenuStyles" align="center">
	<input type="submit" name="submit" value="submit"></td>
  </tr>
</table>
<p>&nbsp;</p>
</form>
</body>
</html>
