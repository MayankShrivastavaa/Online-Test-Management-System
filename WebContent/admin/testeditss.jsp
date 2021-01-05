<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>
<%  int it1=Integer.parseInt(request.getParameter("textfield1"));
	String st2=request.getParameter("question");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	
	String st5=request.getParameter("textfield5");
	String st6=request.getParameter("textfield6");
	String st7=request.getParameter("textfield7");
	
%>
<% //Integer logid=(Integer)session.getAttribute("login1");%>

<% 
//int n1=logid.intValue();

%>
 

<% 



	
 	String query="update test_queries set  ques_name='"+st2+"',ques_opt1='"+st3+"',ques_opt2='"+st4+"',ques_opt3='"+st5+"',ques_opt4='"+st6+"',QUES_ANS='"+st7+"' where  QUES_NUMBER="+it1;
	
	int j=obj.insertData(query);
		if (j>0)
		{             
			                               
  			out.println("Updated");
			
		}
		else
		{
  			out.println("Sorry !..");
		}

%>
