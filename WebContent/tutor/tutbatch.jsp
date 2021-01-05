<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="javax.sql.*,java.sql.*,java.*,java.util.*" %>
<% String tut_id=(String)session.getAttribute("ses_tut_id");%>
<jsp:useBean id="obj" class="db.onBean" scope="session" />

<html>
<head>

<title>Batch Details Document</title>
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
<form name="frm" method="post" >
<p>&nbsp;</p>
<p align="center" class="GreaterThan">Batch Details for Institution Id :<%=tut_id%></p>
  
	 <%  
	 Hashtable ht = null;
		 ht=obj.getbatdetailfortut(tut_id);%>
<table width="775"  border="1" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#333399" class="GreaterThan">
   <td width="16%"><div align="center" class="GreaterThan style1">Batch Id </div></td>
    <td width="14%"><div align="center" class="GreaterThan style1">Batch Name </div></td>
    <td width="16%"><div align="center" class="GreaterThan style1">Start Date</div></td>
  <td width="15%"><div align="center" class="GreaterThan style1">End Date</div></td>
  <td width="15%"><div align="center" class="GreaterThan style1">Course ID </div></td>
  </tr>
	  
			
	<%		for(Enumeration e = ht.keys() ; e.hasMoreElements() ;)
		    {
		 		//Integer id= (Integer)e.nextElement();
	         	String rno= (String)e.nextElement();
				StringTokenizer str=new StringTokenizer((String)ht.get(rno),"&?"); %>
   
	  
	  
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
</form>
</body>
</html>
