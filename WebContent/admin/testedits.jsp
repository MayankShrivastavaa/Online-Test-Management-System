


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>


<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>
<%! int j;%>
<%! String jcodeedit;%>
<%! int jcode1;%>
<% System.out.println("welcome");%>
<% jcodeedit=request.getParameter("codeedit");	%>

<%
	
	Hashtable ht = obj.gettest_qt(jcodeedit);	
	String qno = ((String)ht.get("QUES_NUMBER")).trim();
                if(qno.equals(jcodeedit))
                 {   
		jcode1=Integer.parseInt(jcodeedit);
	%>
                	                                    
<BODY text=#000000  leftMargin=0 topMargin=0>
<form name="form1" method="post" action="testeditss.jsp">
<TABLE width="672" height="457" border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <TR>
      <TD vAlign=top 
    bgColor=#ffffff colspan="3" height="19">&nbsp;</TD>
    </TR>
    <TR valign="middle">
      <TD 
    bgColor=#ffffff colspan="3" height="97">
        <p align="center"> <b> <font color="#6699CC"> </font></b>Edit Question              
        <hr>
      <p align="center"> </TD>
    </TR>
    <TR>
      <TD vAlign=middle 
    bgColor=#ffffff height="36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question No </TD>
      <TD height="36" colspan="2" vAlign=middle 
    bgColor=#ffffff><input type="text" name="textfield1" value="<%=ht.get("QUES_NUMBER")%>" size="20" tabindex="1" ReadOnly></TD>
    </TR>
    <TR>
      <TD vAlign=middle 
    bgColor=#ffffff height="36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Level</TD>
      <TD height="36" colspan="2" vAlign=middle 
    bgColor=#ffffff><select name="select">
        <option value="1">Beginer</option>
        <option value="2">Medium</option>
        <option value="3">Hard</option>
      </select></TD>
    </TR>
    <tr>
      <TD vAlign=middle width=240 
    bgColor=#ffffff height="36" align="center"><span class="text">&nbsp;&nbsp;Question&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</TD>
      <TD height="36" colspan="2" vAlign=middle 
    bgColor=#ffffff>
        <p align="left">
          <input type="text" name="question" value="<%=(ht.get("QUES_NAME"))%>" size="20" tabindex="1" ReadOnly>
      </TD>
    </tr>
    <tr>
      <TD vAlign=middle width=240 
    bgColor=#ffffff height="37" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question option 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</TD>
      <TD height="37" colspan="2" vAlign=middle 
    bgColor=#ffffff>
        <p align="left">
          <input type="text" value="<%=ht.get("QUES_OPT1")%>" name="textfield3" size="20" tabindex="3">
      </TD>
    </tr>
    <tr>
      <TD vAlign=middle width=240 
    bgColor=#ffffff height="36" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question option 2 &nbsp;&nbsp;&nbsp;</TD>
      <TD height="36" colspan="2" vAlign=middle 
    bgColor=#ffffff>
        <p align="left">
          <input type="text" name="textfield4" value="<%=ht.get("QUES_OPT2")%>" size="20" tabindex="4">
      </TD>
    </tr>
    <tr>
      <TD vAlign=middle width=240 
    bgColor=#ffffff height="28" align="center">&nbsp; &nbsp;&nbsp; Question option 3 &nbsp;&nbsp;</TD>
      <TD height="28" colspan="2" vAlign=middle 
    bgColor=#ffffff>
        <p align="left">
          <input type="text" value="<%=ht.get("QUES_OPT3")%>" name="textfield5" size="20" tabindex="5">
      </TD>
    </tr>
    <tr>
      <TD vAlign=middle width=240 
    bgColor=#ffffff height="27" align="center">&nbsp;&nbsp;&nbsp;&nbsp; Question option 4 &nbsp;&nbsp;</TD>
      <TD height="27" colspan="2" vAlign=middle 
    bgColor=#ffffff>
        <p align="left">
          <input type="text" value="<%=ht.get("QUES_OPT4")%>"name="textfield6" size="20" tabindex="6">
      </TD>
    </tr>
    <tr>
      <TD vAlign=middle width=240 
    bgColor=#ffffff height="28" align="center">&nbsp;Question Answer</TD>
      <TD height="28" colspan="2" vAlign=middle 
    bgColor=#ffffff>
        <p align="left">
          <input type="text"  value="<%=ht.get("QUES_ANS")%>" name="textfield7" size="20" tabindex="7">
      </TD>
    </tr>
    <TR>
      <TD vAlign=middle width=240 
    bgColor=#ffffff height="26">&nbsp;</TD>
      <TD vAlign=top width=197 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="submit" name="Submit" value="Update" tabindex="12"></TD>
      <TD vAlign=top width=235 
    bgColor=#ffffff height="26">
        <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </p></TD>
    </TR>
    <TR>
      <TD vAlign=top width=240 
    bgColor=#ffffff height="26">&nbsp;</TD>
      <TD vAlign=top width=197 
    bgColor=#ffffff height="26">&nbsp;</TD>
      <TD vAlign=top width=235 
    bgColor=#ffffff height="26">&nbsp;</TD>
    </TR>
    <TR>
      <TD vAlign=top width=240 
    bgColor=#ffffff height="25">&nbsp;</TD>
      <TD vAlign=top width=197 
    bgColor=#ffffff height="25">&nbsp;</TD>
      <TD vAlign=top width=235 
    bgColor=#ffffff height="25">&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<%
	  	

	}
	else
	{%>
<table>
	<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Sorry could not find the record...</b>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </p>
          </TD></TR>
              	 	
           	<%

	}


%>
</form>
</BODY>
</html>