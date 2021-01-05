<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>
<%!  	
	ResultSet rs=null;
%>

<% try
	{
 	rs=obj.seekLogin1("select * from test_queries");
%>


<TABLE cellSpacing=0 cellPadding=0 width=491 bgColor="white" border=0 height="251">

 <TBODY>
  <TR>
    <TD vAlign=top height=251 width="790">
      <TABLE cellSpacing=1 width="790" border=1 height="207" >

        <TBODY align="center">
            
<tr>
<td height="112"><font color="#000080" face="Times New Roman"><b><i><font size="4">&nbsp;
  Questions are..</font><font color="#BE7DFF" size="6">.</font> </i></b></font></td></tr>
<tr><td width="170" height="61"><b><font face="Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Question No</font></b></td>
<td width="193" height="61"><b><font face="Times New Roman">Question</font></b></td>
<td width="421" height="61"><b><font face="Times New Roman">Answer</font></b></td>
</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="170" height="34">  
	   <%out.println(rs.getInt(1));%>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  </td>
	  <td width="193" height="34">  
	   <%out.println(rs.getString(2));%>
	  </td>
	  <td width="421" height="34">  
	   <%out.println(rs.getString(7));%>
	  </td> 
	  
	   </tr> 
      <%}%>
 
 </TBODY></TABLE>
</TBODY>

</TABLE>

<%}
catch(Exception e)
{
 System.out.println("error"+e);
}



%>
<P align="left">&nbsp; </p>

</BODY></HTML>
