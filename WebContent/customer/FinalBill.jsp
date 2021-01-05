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
.style3 {color: #FFFFFF}
.style4 {	color: #004080;
	font-weight: bold;
}
-->
</style>
<script language="javascript">
function validate()
{
	val = document.form1.selec.value;
	if(val == "")
	{
		alert("Please select Payment type..!");
		return;		
	}
	if(val == "ByCreditCard")
	{
		if(document.form1.cr_no.value=="")
	    {
	 		alert("Please Enter Card Number,Should Not Be Blank");
			document.form1.cr_no.focus();
			return;
	  	}
	  
	 	phno=document.form1.cr_no.value;
	 
	 	for(i=0;i<phno.length;i++)
	    {
			if((phno.charAt(i)>='0' && phno.charAt(i)<='9') || phno.charAt(i)=='-')
		    {
		    }
		  	else
		    {
		    	alert("Invalid Card Number , Should Enter Only Numbers");
	          	document.form1.cr_no.focus();
	          	return;
		    }
		}  
	}
	else if(val == "ByCheck")
	{		
		if(document.form1.c_no.value=="")
	    {
	 		alert("Please Enter DD/Cheque Number,Should Not Be Blank");
			document.form1.c_no.focus();
			return;
	  	}
	  
	 	phno=document.form1.c_no.value;
	 
	 	for(i=0;i<phno.length;i++)
	    {
			if((phno.charAt(i)>='0' && phno.charAt(i)<='9') || phno.charAt(i)=='-')
		    {
		    }
		  	else
		    {
		    	alert("Invalid DD/Cheque , Should Enter Only Numbers");
	          	document.form1.c_no.focus();
	          	return;
		    }
		}  
		
		if(document.form1.c_year.value=="")
	   	{
	 		alert("Please Enter year,Should Not Be Blank");
			document.form1.c_year.focus();
			return;
	  	}
	  	phno=document.form1.c_year.value;
	 
		for(i=0;i<phno.length;i++)
	    {
			if((phno.charAt(i)>='0' && phno.charAt(i)<='9') || phno.charAt(i)=='-')
		    {
		    }
		  	else
		    {
		    	alert("Invalid year , Should Enter Only Numbers");
	          	document.form1.c_year.focus();
	          	return;
		    }
		} 
		
	   	if(document.form1.c_bank.value=="")
	   	{
	 		alert("Please Enter Bank,Should Not Be Blank");
			document.form1.c_bank.focus();
			return;
	  	}
	}
	document.form1.action = "/OnlineTest/CalcBill";
	document.form1.submit();
}
function validateSel()
{
	document.form1.action = "FinalBill.jsp";
	document.form1.submit();
}
</script>
</head>
<body>
<%	int i = 1;	%>
<form name="form1" method="post">
<table width="775" border="0"  align="center" cellpadding="0" cellspacing="0" class="borderstyle" >
    <tr background="../images/browse-result-bg.gif">
      <td width="84" height="35" background="../images/browse-result-bg.gif">&nbsp;</td>
      <td width="169" background="../images/browse-result-bg.gif">&nbsp;</td>
      <td width="205" background="../images/browse-result-bg.gif">&nbsp;</td>
      <td colspan="3" background="../images/browse-result-bg.gif">&nbsp;</td>
    </tr>
    <tr>
      <td height="19" colspan="2" class="ChannelLabel">Shopping Cart Items</td>
      <td height="19" class="Message">&nbsp;</td>
      <td height="19" colspan="2" class="Message">&nbsp;</td>
      <td width="4" height="19" class="Message">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="6" class="Message"><hr></td>
    </tr>
	<tr>
	  <td colspan="5">&nbsp;</td>
    </tr>
	<tr>
	  <td colspan="5">
	<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td width="56" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">SlNo</div></td>
		<td width="214" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">Item</div></td>
		<td width="205" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">Price</div></td>
		<td width="125" bgcolor="#586B95" class="menuitems"><div align="center" class="Sitemap1">Qty</div></td>
	</tr>
	<tr><td height="25"></td><td height="25"></td><td height="25"></td><td height="25"></td></tr>
<%	float subTot = 0f;
	float price = 0f;
	int qty = 0; 
	for(Enumeration e = itemCart.keys() ; e.hasMoreElements() ;)
	{
		String itemId=(String)e.nextElement();
		Hashtable h = obj.getBookDetails(itemId);	%>
		<tr>
			<td width="56" height="25"><div align="center" class="admintitles"><%=i%></div></td>
			<td width="214" height="25" class="admintitles"><div align="center" class="admintitles"><%=itemId%></div></td>
			<td width="205" height="25"><div align="center" class="GreaterThan"><%=h.get("BOOK_PRICE")%></div></td>
			<td width="125" height="25"><div align="center"><input name="<%=itemId+"qty"%>" type="text" value="<%=itemCart.get(itemId)%>" size="5" readonly>
			</div></td>
		</tr>
		<tr><td height="25"></td><td height="25"></td><td height="25"></td><td height="25"></td></tr>
<%		i++;
		qty = ((Integer)itemCart.get(itemId)).intValue();
		price = ((Float)h.get("BOOK_PRICE")).floatValue(); 
		subTot = subTot + qty*price;
	}
	String sel = request.getParameter("selec");	%>
	</table></td>
	</tr>
	<tr>
	  <td colspan="5"><hr></td>
    </tr>
	<tr>
	  <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="right"><span class="style4">Sub Total :</span></div></td>
      <td width="102" class="GreaterThan"><%= subTot %>&nbsp;</td>
	  <td width="209">&nbsp;</td>
	</tr>
	<tr>
	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	  <td class="GreaterThan">&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>
      <tr>
        <td width="84"><div align="right">
        </div></td>
        <td width="169" class="ChannelLabel"><span class="lnk">SelectPayement Type</span> : </td>
		
        <td colspan="3">	
		<select name="selec" id="selec" onChange="validateSel()">	
<%		if(sel == null)
		{
			sel = " ";	%>
<%		}	%>
          	<option   value="ByCreditCard" <%if(sel.equals("ByCreditCard")){%>selected<%}%> >ByCreditCard</option>
          	<option value="ByCheque" <%if(sel.equals("ByCheque")){%>selected<%}%>>ByDD</option>
          	<option value="CashOndelivery" <%if(sel.equals("CashOndelivery")){%>selected <%}%>  >CashOndelivery</option>
        </select></td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="HighLight"><span class="text">Credit card No</span> :</td>
        <td colspan="3"><input name="cr_no" type="text" id="cr_no" <%if(sel.equals("CashOndelivery")||sel.equals("ByCheque")){%> disabled<%}%> ></td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="ChannelLabel"><span class="text1">DD  Details</span> : </td>
        <td colspan="3">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><span class="HighLight">DD No :</span> </td>
        <td><input name=c_no type=text  id="c_no" <%if(sel.equals("ByCreditCard")||sel.equals("CashOndelivery")){%>disabled <%}%>></td>
        <td width="102"><span class="HighLight"> Bank :</span></td>
        <td width="209"><input name="c_bank" <%if(sel.equals("ByCreditCard")||sel.equals("CashOndelivery")){%> disabled <%}%>></td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><span class="HighLight">DD  Date:</span></td>
        <td width="205">		<select id="select" size="1" name="c_day" <%if(sel.equals("ByCreditCard")||sel.equals("CashOndelivery")){%> disabled <%}%>>
          <option value="1" selected>1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value=6>6</option>
          <option value=7>7</option>
          <option value=8>8</option>
          <option value=9>9</option>
          <option value=10>10</option>
          <option value=11>11</option>
          <option value=12>12</option>
          <option value=13>13</option>
          <option value=14>14</option>
          <option value=15>15</option>
          <option value=16>16</option>
          <option value=17>17</option>
          <option value=18>18</option>
          <option value=19>19</option>
          <option value=20>20</option>
          <option value=21>21</option>
          <option value=22>22</option>
          <option value=23>23</option>
          <option value=24>24</option>
          <option value=25>25</option>
          <option value=26>26</option>
          <option value=27>27</option>
          <option value=28>28</option>
          <option value=29>29</option>
          <option value=30>30</option>
          <option value=31>31</option>
        </select>
        <select id="select2" size="1" name="c_month" <%if(sel.equals("ByCreditCard")||sel.equals("CashOndelivery")){%> disabled <%}%>>
            <option value=january selected>january</option>
            <option value=february>february</option>
            <option value=mar>march</option>
            <option value=april>april</option>
            <option value=may>may</option>
            <option value=june>june</option>
            <option value=july>july</option>
            <option value=august>august</option>
            <option value=september>september</option>
            <option value=october>october</option>
            <option value=november>november</option>
            <option value=december>december</option>
        </select>
        <input name="c_year" type="text" size="6" <%if(sel.equals("ByCreditCard")||sel.equals("CashOndelivery")){%>disabled <%}%>></td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="HighLight">Delivery Address : </td>
        <td><textarea name="address" rows="4" id="address"></textarea></td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="5"><span class="text1"></span></td>
      </tr>
      <tr>
        <td colspan="5"><div align="center">
          <input type="button" name="Submit" value="Submit" onClick="validate()">
        </div></td>
      </tr>
	<tr>
	  <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="6"></td>
    </tr>
  </table>
</form>
</body>
</html>
