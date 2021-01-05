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
.style4 {color: #FF9933}
.style7 {
	font-size: 18px;
	color: #336600;
}
-->
</style>
<script language="javascript">
function validateCat()
{
	if(document.form1.cat.value == "SalesOrder")
	{
		document.form1.action="SelectSOItems.jsp?categ=SalesOrder";
		document.form1.submit();
	}
	else
	{
		document.form1.action="Shopping.jsp";
		document.form1.submit();
	}
}
</script>
</head>

<body>
<form name="form1" method="post">
  <table width="775" border="0" align="center" cellpadding="0" cellspacing="0" background="../images/bgpatch.jpg" class="borderBlue">
  <tr>
     <td height="32" colspan="8" background="../images/browse-result-bg.gif"><span class="style7">Welcome to Shopping cart </span></td>
  </tr>
  <tr>
    <td colspan="5">&nbsp;</td>
  <tr>
    <td width="68">&nbsp;</td>
    <td width="115" class="Products">Select Category </td>
    <td width="453">
	<select name="cat" id="cat" onChange="validateCat()">
<%!	Enumeration enu; %>
<%!	Hashtable h; %>
<%! Vector v = new Vector(); %>
<%! String s = new String(); %>
<%! String check = new String(); %>
<%! String add = new String(); %>
<%  check = request.getParameter("cat");
	add = request.getParameter("Item");
	h = null;
	if(add != null)
		check = new String(add);
    try
	{
		v = obj.getCateg();
		enu = v.elements();
		if(check == null)
		{ %>
        	<option  value="" > </option>
<%   		while(enu.hasMoreElements())
		    {
				s = (String)enu.nextElement(); %>
              	<option value="<%= s %>" ><%= s %></option>
<%   		}
			v = null;
			enu = null;
			s = null;
		}
		else
		{ 
			h = obj.getCatBooksDetails(check);
            while(enu.hasMoreElements())
		    {
				s = (String)enu.nextElement(); %>
              	<option value="<%= s %>" <% if(check.equals(s)){ %> selected <% } %> ><%= s %></option>
<%  		} 
			v = null;
		   	enu = null;
		    s = null;
       } 
	}
	catch(Exception e)
    {
		e.printStackTrace();
    }	%>
    </select></td>
    <td width="68">&nbsp;</td>
    <td width="71">&nbsp;</td>
  <tr>
    <td colspan="5">&nbsp;</td>
    <tr>
    <td colspan="5">
	<table width="775"  border="0" cellspacing="0" cellpadding="0">
	  <tr>
<%	int cols = 0;
	if(h != null)
	{
	for(Enumeration e = h.keys() ; e.hasMoreElements() ;)
	{
		String itemId=(String)e.nextElement();
		StringTokenizer str=new StringTokenizer((String)h.get(itemId),"**");
		if(str.hasMoreTokens())
		{	%>
			
				<td width="161" ><div align="center">
				  <p>
				  <a href="AddItem.jsp?Id=<%=itemId%>"><img src="../<%=str.nextToken()%>" width="85" height="80" border="1"></a>
				  </p>
				  <p><span class="HighLight">Item: </span><B><%=str.nextToken()%></B></p>
				  <p class="style4"><span class="style4"><b>Rs.<%=str.nextToken()%></b></span></p>
				  <p><a href="AddItem.jsp?Id=<%=itemId%>" class="Link">Know More</a></p>
	              </div></td>
<%		}	       
		cols++;
		if(cols == 4)
		{
			cols = 0;	%>
     	<tr><td width="20"></td><td width="20"></td><td width="20"></td><td width="20"></td></tr>
<%		}
	}
	}	%> 
      </tr>
    </table>
	
	</td></tr>

	<tr><td colspan="5"></tr>
    <tr>
      <td colspan="8">&nbsp;</td>
    </tr>
    <tr>
      
<%	if(itemCart != null)
	{	%>
	  <td colspan="8"><div align="center"><a href="Showcart.jsp"><img src="../images/proceed-to-checkout.gif" width="183" height="31" border="0"></a></div></td>
<%	}	%>
    </tr>
    <tr>
      <td colspan="8">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="8">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="8">&nbsp;</td>
    </tr>
  </table>
  
</form>
</body>
</html>
