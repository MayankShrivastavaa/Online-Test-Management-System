<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" />
<% String tut_id=(String)session.getAttribute("ses_tut_id");
	String bid = (String)request.getParameter("batchId");
	String title = (String)request.getParameter("title");
	session.setAttribute("batch",bid);
	session.setAttribute("title",title);%>
<html>
<style type="text/css">
<!--
body {
	background-color: #b6c7e5;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="../mail_style.css" rel="stylesheet" type="text/css">
<body>
<form method="post" ACTION="fileupload.jsp" name="upform" ENCTYPE='multipart/form-data'>
  <p>&nbsp;</p>
  <table width="588" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="5350b9">
    <tr background="../images/bgpatch.jpg">
      <td colspan="4"><div align="center"><span class="headlinewhite">Upload Resource </span>
        <hr>
      </div></td>
    </tr>
    <tr background="../images/bgpatch.jpg">
      <td colspan="4"><div align="center"></div></td>
    </tr>
    <tr background="../images/bgpatch.jpg">
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr background="../images/bgpatch.jpg">
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td width="72" background="../images/bgpatch.jpg">&nbsp;</td>
      <td width="117" background="../images/bgpatch.jpg" class="bodywhite">Select Item : </td>
      <td colspan="2" background="../images/bgpatch.jpg"><input name="uploadfile" type="file" class="buttonwhite"></td>
    </tr>
    <tr background="../images/bgpatch.jpg">
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr bgcolor="#5350B9" background="../images/bgpatch.jpg">
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2" background="../images/bgpatch.jpg"><div align="right">
      </div></td>
      <td width="116" background="../images/bgpatch.jpg">
        <div align="left">
          <input name="Submit" type="submit" class="buttonwhite" value="Submit">
        </div></td>
      <td width="283" background="../images/bgpatch.jpg"><input name="Reset" type="reset" class="buttonwhite" value="Reset"></td>
    </tr>
    <tr background="../images/bgpatch.jpg">
      <td colspan="4"><input type="hidden" name="action" value="upload"></td>
    </tr>
  </table>
</form> 
</body>
</html>