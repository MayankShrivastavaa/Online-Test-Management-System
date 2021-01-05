<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" />
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="../../scm/ISSCSS.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #d8e1f9;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>
<body >
<FORM name="refrm1">

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" class="border">
  <tr bgcolor="#6076B0">
    <td colspan="2" align="center" class="text"><div align="left"></div></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td colspan="2"><TABLE width="75%" border=1 align="center" cellPadding=0 cellSpacing=0 class="border">
      <TR class="Sitemap1">
        <TH height="20" class="border">USER_ID</TH>
        <TH height="20" class="border">USER_NAME</TH>
        <TH height="20" class="border">USER_CITY</TH>
        <TH height="20" class="border">USER_MAIL</TH>
		<TH height="20" class="border">SEX</TH>
		<TH height="20" class="border">USER_ADD</TH>
		
      </tr>
      <%
		  Hashtable h=null;
          h=obj.getCustomers();
		for (Enumeration e = h.keys() ; e.hasMoreElements() ;) 
		{
			String id=(String)e.nextElement();
			StringTokenizer str=new StringTokenizer((String)h.get(id),"?&");
%>
      <TR>
        <TD height="20" class="border"><a href="../../OnlineTest/admin/customerDetails.jsp?pid=<%=id%>" ><%=id%></a></TD>
        <%
	 while (str.hasMoreTokens()) {
%>
        <TD height="20" class="border"><%=str.nextToken()%></TD>
        <%
		}
   %>
       </tr>
        <%
}
%>
      </TABLE></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
</table>
</P>
<P>
  </P>
</form>
</BODY>
</HTML>
