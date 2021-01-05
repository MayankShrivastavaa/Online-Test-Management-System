<%@ page import="java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" />
<%	Hashtable itemCart = null;
	itemCart = (Hashtable)session.getAttribute("cart"); %>
<html>
<head>
<title>ShoppingCart</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../ISSCSS.css" type="text/css">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EFF2F7;
}
-->
</style>

<style type="text/css">
<!--
.style2 {color: #000000}
-->
</style>
<script language="javascript">
function validate()
{
 	 
}
</script>
</head>
<body>
<%	String itemId = request.getParameter("Id");
	Hashtable ht = obj.getBookDetails(itemId);	%>
<form name="form1" method="get">
<table width="775" border="0"  align="center" cellpadding="0" cellspacing="0" class="borderBlue" background="../images/bgpatch.jpg">
    <tr background="images/browse-result-bg.gif">
      <td width="12" background="../images/browse-result-bg.gif">&nbsp;</td>
      <td width="23" background="../images/browse-result-bg.gif"><a href="Shopping.jsp"><img src="../images/bck-but.gif" width="17" height="30" border="0"></a> </td>
      <td width="223" background="../images/browse-result-bg.gif" class="Legend">Back</td>
      <td background="../images/browse-result-bg.gif">&nbsp;</td>
      <td background="../images/browse-result-bg.gif">&nbsp;</td>
      <td background="../images/browse-result-bg.gif">&nbsp;</td>
      <td background="../images/browse-result-bg.gif">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="7">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" rowspan="13">
	  <div align="center"><img src="../<%=ht.get("BOOK_IMAGEURL")%>" width="200" height="170" border="1"></div></td>
      <td width="19">&nbsp;</td>
      <td width="120" class="HighLight">&nbsp;</td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="HighLight">Item Name : </span></td>
      <td colspan="2" class="GreaterThan"><%=ht.get("TITLE")%>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="HighLight">&nbsp;</td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="HighLight">Book No : </td>
      <td colspan="2" class="GreaterThan"><%=itemId%></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="HighLight">&nbsp;</td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="HighLight">Description : </span></td>
      <td colspan="2" class="GreaterThan"><%= ht.get("BOOK_DESC")%></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="HighLight">&nbsp;</td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><span class="HighLight">Price : </span></td>
      <td colspan="2" class="ChannelLabel3">Rs.<%= ht.get("BOOK_PRICE")%></td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td width="135"><div align="right"><a href="/OnlineTest/AddToCart?Id=<%=itemId%>"><img src="../images/addtocart.jpg" width="100" height="22" border="0" ></a></div></td>
      <td width="243">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="7">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="7">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
