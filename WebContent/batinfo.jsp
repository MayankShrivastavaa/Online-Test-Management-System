<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" /> <html>
<% 
String bidps=request.getParameter("bids");
System.out.println("Starttttttttt"+bidps);
%>

<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script language=javascript>
function validate() {
	document.frm.action="batinfo.jsp";
	document.frm.submit();
}
</script>

<style type="text/css">
<!--
body {
	background-color: #b6c7e5;
}
-->
</style>
<link href="ISSCSS.css" rel="stylesheet" type="text/css">
</head>

<body>
<form name="frm" method="post" action="/OnlineTest/customer/custRegistration.jsp">
<p>&nbsp;</p>
<p>&nbsp;</p>

<p align="center" class="GreaterThan">Batch Description </p>
<table width="52%"  border="0" cellspacing="0" cellpadding="0" align="center">
  <% Vector cids1 = new Vector();
  cids1=obj.getIds("batch","BATCHID");%>
  <tr>
    <td width="33%">Batch Id </td>
    <td width="67%">
	
      <select name="bids" onChange="validate()">
	   <% if(bidps== null){ System.out.println("In if....");%>
     <option value=" ">   </option>
              <%  	} %>
	  <% Enumeration venum1 = cids1.elements();
while (venum1.hasMoreElements())   {
			String incci1=(String)venum1.nextElement();%>
            
			  <option  value="<%= incci1%>"<%if((bidps!=null) && bidps.equals(incci1)){%>selected<%}%>><%= incci1%></option>
              <%}%> 
	  
      </select>
    </td>
  </tr>
 </table>
 
 <%Hashtable ht=null;
   if(bidps!=null)
  { 
 System.out.println("injap"+bidps);
 ht=obj.getBatchDetails(bidps);%>
 <table width="52%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#B6C7E5">
   <tr></tr>
   <tr></tr>
   <tr bgcolor="#B6C7E5">
     <td>Batch Name</td>
     <td><% out.println(ht.get("name")); %></td>
   </tr>
   <tr bgcolor="#B6C7E5">
     <td>course</td>
     <td><% out.println(ht.get("cname")); %></td>
   </tr>
   <tr bgcolor="#B6C7E5">
     <td>Start Date </td>
     <td><% out.println(ht.get("sdt")); %></td>
   </tr>
   <tr bgcolor="#B6C7E5">
     <td>End Date </td>
     <td><% out.println(ht.get("edt")); %></td>
   </tr>
   <tr bgcolor="#B6C7E5">
     <td>Cost</td>
     <td><% out.println(((Float)(ht.get("cost"))).floatValue()); %></td>
   </tr>
   <tr bgcolor="#B6C7E5">
     <td>Batch Desc </td>
     <td><% out.println(ht.get("desc")); %></td>
   </tr>
   <tr align="center">
     <td>
       <input type="submit" name="some" value="register"></td>
   </tr>
 </table>
 <% } %>
<p>&nbsp;</p>
</form>
</body>
</html>
