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
-->
</style>
<script language="javascript">
function validate()
{
	document.form1.title.value = "";
	document.form1.title.focus();
	return;
}

</script>
</head>
<% String tut_id=(String)session.getAttribute("ses_tut_id");%>
<body>
<form name="form1" method="post" action="../admin/uploadre.jsp">
<table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#5350B9">
  <tr>
    <td colspan="6" class="headlinewhite"><div align="center">Resourse Upload
        <hr>
    </div></td>
  </tr>
  <tr>
    <td colspan="6">&nbsp;</td>
  </tr>
  <tr>
    <td width="105"><div align="right" class="bodywhite">Select Batch : </div></td>
    <td width="14">&nbsp;</td>
    <td width="63">
	<select name="batchId" id="batchId">
    <%	Enumeration e = (obj.getbattutIds(tut_id)).elements();
   		while(e.hasMoreElements())
		{	
			String id = (String)e.nextElement();	%>
      		<option value="<%=id%>"><%=id%></option>
   	<%	}	%>
    </select></td>
    <td width="86"><div align="right" class="bodywhite">Date</div></td>
    <td width="10">&nbsp;</td>
    <td width="222"><input name="title" type="text" id="title" value="DD-MM-YYYY" onClick="validate()" onFocus="validate()"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td class="topbodywhite">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="6"><div align="center">
      <input name="Submit" type="submit" class="buttonwhite" value="Submit">
    </div></td>
  </tr>
</table>
<p align="center"></p>
</form>
</body>
</html>
