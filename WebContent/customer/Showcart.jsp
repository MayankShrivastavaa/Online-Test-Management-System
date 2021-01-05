<%@ page import="java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" />
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
.style4 {
	color: #004080;
	font-weight: bold;
}
-->
</style>
<script language="javascript">
function validateUpdate()
{
	document.form1.action="/OnlineTest/UpdateCart";
    document.form1.submit();
}
function validateBuy()
{
	ans = confirm("Are u ready to buy the things..?");
	if(ans == 1)
	{
		document.form1.action="FinalBill.jsp";
    	document.form1.submit();
	}
	else
		return;
}
function goback()
{
	history.back();
}

</script>
</head>
<body>
<%	int i = 1;	%>
<form name="form1" method="get">
<%	Hashtable itemCart = null;
	itemCart = (Hashtable)session.getAttribute("cart"); %>
<table width="775" border="0"  align="center" cellpadding="0" cellspacing="0" background="../images/bgpatch.jpg" class="borderstyle" >
    <tr background="images/browse-result-bg.gif">
      <td width="23" background="../images/browse-result-bg.gif">
	    <img src="../images/bck-but.gif" width="17" height="30" border="0" onClick="goback()" style="cursor:hand"></td>
      <td colspan="4" background="../images/browse-result-bg.gif"><span class="Legend">Back</span> </td>
    </tr>
    <tr>
      <td height="19" class="Message">&nbsp;</td>
      <td width="320" height="19" class="HighLight">Shopping Cart Items--To Buy Now</td>
      <td width="238" class="Message"><div align="right"></div></td>
      <td height="19" class="Message">&nbsp;</td>
      <td width="4" height="19" class="Message">&nbsp;</td>
    </tr>
    <tr>
      <td height="26" colspan="5" class="Message"><hr></td>
    </tr>
	<tr><td colspan="4">
	<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td width="46" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">SlNo</div></td>
		<td width="213" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">Item</div></td>
		<td width="128" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">Price</div></td>
		<td width="100" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">Qty</div></td>
		<td width="113" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">Remove</div></td>
	</tr>
	<tr><td height="25"></td></tr>
<%	float subTot = 0f;
	float price = 0f;
	int qty = 0; 
	for(Enumeration e = itemCart.keys() ; e.hasMoreElements() ;)
	{
		String itemId=(String)e.nextElement();
		Hashtable h = obj.getBookDetails(itemId);	%>
		<tr>
			<td width="46" height="25"><div align="center" class="admintitles"><%=i%></div></td>
			<td width="213" height="25"><div align="center" class="admintitles"><%=itemId%></div></td>
			<td width="128" height="25"><div align="center" class="GreaterThan"><%=h.get("BOOK_PRICE")%></div></td>
			<td width="100" height="25"><div align="center"><input name="<%=itemId+"qty"%>" type="text" class="borderBlue" value="<%=itemCart.get(itemId)%>" size="5">
			</div></td>
			<td width="113" height="25"><div align="center">
			  <input name="<%=itemId+"check"%>" type="checkbox" id="check" value="checkbox">
			  </div></td>
		</tr>
		<tr><td height="25"></td></tr>
<%		i++;
		qty = ((Integer)itemCart.get(itemId)).intValue();
		price = ((Float)h.get("BOOK_PRICE")).floatValue(); 
		subTot = subTot + qty*price;
	}	%>
	</table>
	
	<tr>
	  <td colspan="4"><hr></td>
    </tr>
	<tr>
	  <td height="23">&nbsp;</td>
	  <td colspan="2"><div align="right" class="style4">Sub Total :</div></td>
	  <td class="GreaterThan"><%= subTot %>&nbsp;</td>
    </tr>
	<tr>
	  <td height="21" colspan="4"><hr></td>
    </tr>
	<tr>
	  <td>&nbsp; </td>
      <td colspan="2" bgcolor="#EFF2F7"><div align="right" class="Legend">
	  If you have changed any quantities or removed items, click here to&nbsp;&nbsp; </div></td>
      <td width="188" bgcolor="#EFF2F7"><input type="button" name="Update" value="Update" onClick="validateUpdate()" style="cursor:hand"></td>
	</tr>
	<tr>
	  <td colspan="4">&nbsp;</td>
    </tr>
	<tr>
	  <td colspan="4"><div align="center">
	  <img src="../images/buy-but.gif" width="77" height="22" onClick="validateBuy()" style="cursor:hand"></div></td>
    </tr>
	<tr>
	  <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="5"></td>
    </tr>
  </table>
</form>
</body>
</html>
