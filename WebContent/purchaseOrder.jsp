<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="javax.sql.*,java.sql.*,java.*,java.util.*" %>
<% //String cust_id=(String)session.getAttribute("ses_cust_id");%>
<% String cust_id="2"; %>
<jsp:useBean id="obj" class="db.onBean" scope="session" />


<html>
<head>
<title>user Details Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../ISSCSS.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	background-color: #7798D2;
}
.style1 {color: #D4D0C8}
-->
</style></head>

<body>
<p>&nbsp;</p>
<p align="center" class="GreaterThan">Online User Details </p>
<table width="775"  border="1" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#333399" class="GreaterThan">
   <td width="16%"><div align="center" class="GreaterThan style1">User Id </div></td>
    <td width="14%"><div align="center" class="GreaterThan style1">User Name </div></td>
    <td width="16%"><div align="center" class="GreaterThan style1">Address</div></td>
  <td width="15%"><div align="center" class="GreaterThan style1">contact no </div></td>
  </tr>

 	
	 <%  
	 Hashtable ht = obj.getcustfortut(cust_id);
			for(Enumeration e = ht.keys() ; e.hasMoreElements() ;)
		    {
		 		//Integer id= (Integer)e.nextElement();
	         	String rno= (String)e.nextElement();
				StringTokenizer str=new StringTokenizer((String)ht.get(rno),"!?"); %>
       <TR>
          <TD height="20" bgcolor="#7798D2" class="border"><div align="center" class="link1"><%=rno%></div></TD>
          <%      	while (str.hasMoreTokens())
	        	{  %>
          <TD height="20" bgcolor="#7798D2" class="border"><div align="center" class="link1"><%=str.nextToken()%></div></TD>
		 

          <%	    	} %>
 
  
        <% 	} %>

</tr>
</table>



<p>&nbsp;</p>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div align="center">
     
           </div></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
