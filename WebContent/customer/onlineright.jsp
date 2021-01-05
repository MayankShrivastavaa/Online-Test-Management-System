<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>
<html>
<head>

<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title></title>
</head>
<body>


<%	String ses_cust_id=(String)session.getAttribute("ses_cust_id");%>
<%	String bid = (String)session.getAttribute("mybid"); %>
<%  System.out.println("THIS IS IN ONLINERT"+bid);%>
<%  int  levelt = Integer.parseInt(request.getParameter("select1")); %>
<%  session.setAttribute("quelevel",new Integer(levelt)); %>
<%  System.out.println("THIS IS IN ONLINERT LEVEL"+levelt);%>

<div align="center">
  <center>
  <table border="0" width="88%" cellpadding="4" height="1" cellspacing="4">
    <tr>
      <td width="100%" height="0" bordercolor="#B3B3FF">
        &nbsp;
        <font color="#B3B3FF"><b><font size="5">W</font></b>elcome &nbsp;&nbsp;&nbsp;&nbsp;
        </font><font color="Red" size="5"> <%=ses_cust_id%>....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font>
        <p><font color="Red" size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </font><font size="5" color="#B3B3FF">U want to Start the Online Test <a href="onlinetest.jsp?bid=<%=bid%>">
        Yes..</a>&nbsp; <a href="crs.htm" target="_top">No..</a></font></p>
        <p><img border="0" src="../images/background.jpg" width="400" height="200" align="right">
      </td>
    </tr>
  </table>
  </center>
</div>
</body>

</html>
