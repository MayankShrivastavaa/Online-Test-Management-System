<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean"/>
<% String ses_cust_id=(String)session.getAttribute("ses_cust_id");%>
<HTML>
<HEAD>

<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="port.css" rel="stylesheet" type="text/css">
<link href="../ISSCSS.css" rel="stylesheet" type="text/css">
<TITLE></TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--

body {
	background-color: #EFF2F7;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {color: #FFFFFF}
-->
</style></HEAD>
<BODY>
<FORM name="refrm1"  target="mainFrame">
<P>
<H3 align="center" class="text2">Transaction Details </H3>
</P>
<div align="center"><span class="text">The total Nuber of Transactions:</span>
</div>
<P align="center" class="text2">
<TABLE width="75%" border=1 align="center" cellPadding=0 cellSpacing=0 class="border" background="../images/bgpatch.jpg">
 <TR bgcolor="#3366CC" class="Sitemap1">
<th><span class="style1">Sl.No</span></TH>
    <TH><span class="style1">Id</span></TH>
    <TH><span class="style1">Payement Mode</span></TH>
    <TH>Quantity</TH>
	<TH><span class="style1">Deliverydate</span></TH>
	<TH><span class="style1">Transaction Date</span></TH>
	<TH><span class="style1">Amount</span></TH>
  </tr>
<%
		Hashtable h=null;
		h=obj.getTransactions(ses_cust_id);
		for (Enumeration e = h.keys() ; e.hasMoreElements() ;) {
			Integer id=(Integer)e.nextElement();
			StringTokenizer str=new StringTokenizer((String)h.get(id),"?&");
%>
	   <TR>
    <TD><%=id%></TD>
	<%
	 while (str.hasMoreTokens()) {
%>
    <TD><%=str.nextToken()%></TD>
    <%
		}

   %>
      <%
}
%>
  </TABLE>
</P>

</form>
</BODY>
</HTML>
