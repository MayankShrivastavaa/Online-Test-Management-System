<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>
<%@ page import="java.sql.*,javax.sql.*,java.util.*,javax.ejb.*,javax.rmi.*,javax.naming.*" session="true" %>
<%	//ResumeBeanRemote obj=null;
	try
	{
		Context ctx = new InitialContext();
		System.out.println("1");
		Object ob = ctx.lookup("resumerep");
		System.out.println("2");
		//ResumeBeanHome home = (ResumeBeanHome) PortableRemoteObject.narrow(ob,ResumeBeanHome.class);
		System.out.println("3");
		//obj = home.create();
	}
	catch(Exception e)
	{
       System.out.println("Problem in lookup"+e);
	}	%>
<% Integer logid=(Integer)session.getAttribute("login1");%>

<% 
int n1=logid.intValue();
System.out.println(n1);

%>

<%!  	
	
%>
<%! int qno;%>
<%! String strr;%> 
<% try
	{
	//int i=obj.getMax("test_queries","ques_number");
	//System.out.println("Qno:"+i);
 	

       }
catch(Exception e)
	{}

 %>

 	
<TABLE cellSpacing=0 cellPadding=0 width=780 bgColor=#6699cc border=0>

  <TBODY>
  <TR>
    <TD vAlign=top height=321>
      <TABLE cellSpacing=0 cellPadding=0 width="784" border=0 height="353">
       <form name="jobcode11" method="post" action="quesadd1.jsp">
        <TBODY>
        <TR>
          <TD vAlign=top width=1 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=769 
    bgColor=#ffffff height="26">
            <div align="center">
              <center>
              <table border="0" cellpadding="0" cellspacing="0" width="417" height="135">
                <tr>
                  <td width="207" height="51"><b><font size="4" color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b>
                    <p><b><font size="4" color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Adding Queries</font></b></p>
                    <p>&nbsp;</p>
                  </td>
                </tr>
              </center>
              <tr>
        
          <TD vAlign=top width=207 
    bgColor=#ffffff height="37">
            <p align="left"><span class="text">&nbsp;&nbsp; Question No</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;</p>
          </TD>
                <center>
          <TD vAlign=top width=206 
    bgColor=#ffffff height="37">
            <p align="center"><input type="text" name="textfield1" value="<%=qno%>" size="20" tabindex="1" ReadOnly>
          </TD>
                </tr>
                <tr>
          <TD vAlign=top width=207 
    bgColor=#ffffff height="36"><span class="text">&nbsp;&nbsp; Question&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</TD>
          <TD vAlign=top width=206 
    bgColor=#ffffff height="36">
            <p align="center">&nbsp;&nbsp; <textarea id="hobbies" name="question" style="height: 40; width: 161" rows="1" cols="20" tabIndex="10">
</textarea>
          </TD>
                </tr>
                <tr>
          <TD vAlign=top width=207 
    bgColor=#ffffff height="37">&nbsp;&nbsp; Question option
            1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</TD>
          <TD vAlign=top width=206 
    bgColor=#ffffff height="37">
            <p align="center"><input type="text" name="textfield3" size="20" tabindex="3">
          </TD>
                </tr>
                <tr>
          <TD vAlign=top width=207 
    bgColor=#ffffff height="36">&nbsp;&nbsp; Question option 2 &nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=206 
    bgColor=#ffffff height="36">
            <p align="center"> 
                <input type="text" name="textfield4" size="20" tabindex="4">
          </TD>
                </tr>
                <tr>
          <TD vAlign=top width=207 
    bgColor=#ffffff height="28">&nbsp; &nbsp;Question option 3 &nbsp;&nbsp;</TD>
          <TD vAlign=top width=206 
    bgColor=#ffffff height="28">
            <p align="center"><input type="text" name="textfield5" size="20" tabindex="5">
          </TD>
                </tr>
                <tr>
          <TD vAlign=top width=207 
    bgColor=#ffffff height="27">&nbsp;&nbsp; Question option 4 &nbsp;&nbsp;</TD>
          <TD vAlign=top width=206 
    bgColor=#ffffff height="27">
            <p align="center"><input type="text" name="textfield6" size="20" tabindex="6">
          </TD>
                </tr>
                <tr>
          <TD vAlign=top width=207 
    bgColor=#ffffff height="28">&nbsp;&nbsp;&nbsp;Question Answer</TD>
          <TD vAlign=top width=206 
    bgColor=#ffffff height="28">
            <p align="center"><input type="text" name="textfield7" size="20" tabindex="7">
          </TD>
                </tr>
                <tr>
          <TD vAlign=top width=207 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=206 
    bgColor=#ffffff height="26">
            <p align="center">&nbsp;
            
            <input type="submit" name="Submit" value="  Add  " tabindex="12">&nbsp;
            <input type="reset" name="Submit2" value="Reset" tabindex="13">
          </TD>
                </tr>
                <tr>
          <TD vAlign=top width=415 
    bgColor=#ffffff height="26" colspan="2">
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </TD>
                </tr>
                <tr>
                  <td width="207" height="43"></td>
                </tr>
              </table>
              </center>
            </div>
          </TD></TR>
       </TBODY>

</form>
</TABLE></TD></TR></TBODY></TABLE>


</BODY></HTML>
