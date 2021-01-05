<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<link href="../mail_style.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY bgcolor="#b6c7e5" text=#000000  leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">


<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>
<% String tut_id=(String)session.getAttribute("ses_tut_id");%>

<% //Integer logid=(Integer)session.getAttribute("login1");%>
  
<% 
/*int n1=logid.intValue();
System.out.println(n1);*/

%>
  
  <%!  	
	ResultSet rs = null;
%>
<%! int qno;%>
<%! String strr;%> 

<%	try
	{
		int i=obj.getMaxId("TEST_QUERIES", "QUES_NUMBER");
		qno=i;
		System.out.println("The Question Number Qno:  "+i);
		}
	catch(Exception e)
	{
		System.out.println(e);
	}

 %>
 <form name="form1" method="post" action="quesadd1.jsp">
<table width="417" height="412" border="1" align="center" cellpadding="0" cellspacing="0">
 
  <tr valign="middle" bgcolor="#5350B9">
    <td height="55" colspan="2"><div align="center"><span class="headlinewhite">Add Question
    </span>      <hr> 
    </div></td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td height="37" class="bodywhite">&nbsp;&nbsp; BatchId </td>
    <td height="37">
	<select name="batchId" id="batchId">
	<%	String bids = request.getParameter("batchId");
		Enumeration e = (obj.getbattutIds(tut_id)).elements();
		if(bids == null)
		{	%>
			<option value=""></option>
<%			while(e.hasMoreElements())
			{	
				String id = (String)e.nextElement();	%>
				<option value="<%=id%>"><%=id%></option>
<%			}			
		}
		else
		{
			while(e.hasMoreElements())
			{	
				String id = (String)e.nextElement();	%>
				<option value="<%=id%>"<%if(bids.equals(id)){%>selected<%}%>><%=id%></option>
<%			}			
		}	%>
    </select></td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td height="37" class="bodywhite">&nbsp;&nbsp; Level</td>
    <td height="37"><select name="select">
      <option value="1">Beginer</option>
      <option value="2">Medium</option>
      <option value="3">Hard</option>
    </select></td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td width=204 height="37" class="bodywhite">
    <p align="left"><span class="text">&nbsp;&nbsp; Question No</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</p></td>
    <center>
      <td width=213 height="37">
        
          <div align="left">
            <input type="text" name="textfield1" value="<%=qno%>" size="20" tabindex="1" readonly>
          </div></td>
    </center>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td width=204 height="36" bgcolor="#5350B9" class="bodywhite"><span class="text">&nbsp;&nbsp; Question&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    <td width=213 height="36">
      <p align="left">
        <textarea id="hobbies" name="question" style="height: 40; width: 161" rows="1" cols="20" tabindex="10">
                </textarea>
    &nbsp;&nbsp;    </td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td width=204 height="37" class="bodywhite">&nbsp;&nbsp; Question option 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</td>
    <td width=213 height="37">
      <p align="left">
        <input type="text" name="textfield3" size="20" tabindex="3">
    </td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td width=204 height="36" class="bodywhite">&nbsp;&nbsp; Question option 2 &nbsp;&nbsp;&nbsp;</td>
    <td width=213 height="36">
      <p align="left">
        <input type="text" name="textfield4" size="20" tabindex="4">
    </td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td width=204 height="28" class="bodywhite">&nbsp; &nbsp;Question option 3 &nbsp;&nbsp;</td>
    <td width=213 height="28">
      <p align="left">
        <input type="text" name="textfield5" size="20" tabindex="5">
    </td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td width=204 height="27" class="bodywhite">&nbsp;&nbsp; Question option 4 &nbsp;&nbsp;</td>
    <td width=213 height="27">
      <p align="left">
        <input type="text" name="textfield6" size="20" tabindex="6">
    </td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td width=204 height="28" class="bodywhite">&nbsp;&nbsp;&nbsp;Question Answer</td>
    <td width=213 height="28">
      <p align="left">
        <input type="text" name="textfield7" size="20" tabindex="7">
    </td>
  </tr>
  <tr valign="middle" bgcolor="#5350B9">
    <td height="26">&nbsp;</td>
    <td height="26">&nbsp;</td>
  </tr>
  <tr bgcolor="#5350B9">
    <td width=204 height="26" valign=top>&nbsp;</td>
    <td width=213 height="26" valign=middle>
      <p align="center">&nbsp;
          <input name="Submit" type="submit" class="buttonwhite" tabindex="12" value="  Add  ">
&nbsp;
        <input name="Submit2" type="reset" class="buttonwhite" tabindex="13" value="Reset">
    </td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
</BODY></HTML>
