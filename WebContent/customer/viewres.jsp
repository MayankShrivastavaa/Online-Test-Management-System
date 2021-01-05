
<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" />
<% String ses_cust_id=(String)session.getAttribute("ses_cust_id");%>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
</head>
<body >
<FORM name="refrm1" target="right">

  <table width="101%"  border="0" align="center" cellpadding="0" cellspacing="0" background="../images/bgpatch.jpg">
    <tr>
      <td colspan="3"><div align="center" class="headlineblue">Resources</div></td>
    </tr>
    <tr>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td width="7%">&nbsp;</td>
      <td height="20" align="center">
          <%
		Hashtable h=obj.getres(ses_cust_id);
		for (Enumeration e = h.keys() ; e.hasMoreElements() ;) {
			String id=(String)e.nextElement();
			String title=(String)h.get(id);
			System.out.println("Id : "+id);
			%>
          
      <td height="20" align="center">      
      <div align="center"></div>
          <div align="center"></div>
    </tr>
    <tr>
      <td>&nbsp;</td>
<%	  Hashtable ht = obj.getresdtl(id);
	  for (Enumeration e1 = ht.keys() ; e1.hasMoreElements() ;) {
			String id1=(String)e1.nextElement();
			System.out.println("Title : "+id1);
			String path=(String)ht.get(id1);
			System.out.println("Path : "+path);	%>
      <td width="86%"><div align="center"><span class="border"><a href="..<%= path %>" target="_blank" class="border"><%=id1%></a></span></div></td>
<%	}	%>      
	  <td width="7%">&nbsp;</td>
    </tr>
	<%
		}
				%>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <H3>&nbsp;</H3>
</form>
</BODY>
</HTML>
