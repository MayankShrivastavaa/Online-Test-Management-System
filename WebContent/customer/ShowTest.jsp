<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../mail_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	background-color: #b6c7e5;
}
.style2 {color: #0000CC}
-->
</style></head>
<%	String ses_cust_id=(String)session.getAttribute("ses_cust_id");
	    String bid = obj.getTestStatus(ses_cust_id);
	    session.setAttribute("mybid",bid);%>
<body>
<form name="form1" method="post" action="onlineright.jsp">
  <p>&nbsp;</p>
  <h4 align="center">
    <span class="style2">Select Level</span>    
    <select name="select1">
      <option value="1" selected>Beginer</option>
      <option value="2">Medium</option>
      <option value="3">Hard</option>
    </select>
  </h4>
  <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#5350B9">
  <tr>
    <td width="500" colspan="6" class="headlinewhite"><div align="center">Test
      <hr>
    </div></td>
  </tr>
  <tr>
    <td colspan="6"><div align="center" class="topbodywhite">
          <%if(bid != null){%>      
         Take Test Now...<input type=submit value=OK >
<%}%>
    </div></td>
  </tr>
  <tr>
    <td colspan="6"><div align="center">
    </div></td>
  </tr>
</table>
</form>
</body>
</html>
