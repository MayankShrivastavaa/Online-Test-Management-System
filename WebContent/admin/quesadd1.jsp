<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>

<%  int it1=Integer.parseInt(request.getParameter("textfield1")); 
    int levelt = Integer.parseInt(request.getParameter("select"));
    System.out.println("--level--"+levelt);
	String st2=request.getParameter("question");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	
	String st5=request.getParameter("textfield5");
	String st6=request.getParameter("textfield6");
	String st7=request.getParameter("textfield7");
	String bid=request.getParameter("batchId");
%>

<% //Integer logid=(Integer)session.getAttribute("login1");%>

<%! %>
<%
	//int n1=logid.intValue();
String s="insert into test_queries values(" + it1 + ",'" + st2 + "','" + st3 + "','" + st4 + "','" + st5 + "','" + st6
		+ "','" + st7 + "'," + bid + "," + levelt + ")";
System.out.println("--s--" + s);
int j = obj.insertData("insert into test_queries values(" + it1 + ",'" + st2 + "','" + st3 + "','" + st4 + "','" + st5
		+ "','" + st6 + "','" + st7 + "'," + bid + "," + levelt + ")");
System.out.println("Madi  :" + j);
String result = new String();
if (j > 0) {
	result = "Question Added...";
	response.sendRedirect("quesadd.jsp?res=" + result + "&batchId=" + bid);
} else {
	result = "Error while adding question...";
	response.sendRedirect("quesadd.jsp?res=" + result + "&batchId=" + bid);
}
%>