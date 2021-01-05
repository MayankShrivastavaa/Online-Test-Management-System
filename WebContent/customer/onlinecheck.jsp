<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>
<%
 System.out.println("hai");
 //Integer slogid=(Integer)session.getAttribute("slogin1");
 Integer qno2=(Integer)session.getAttribute("tqno");
 System.out.println("--qno2--"+qno2);
 Integer tcount=(Integer)session.getAttribute("count");
  System.out.println("--tcount--"+tcount);
 Integer qscnt=(Integer)session.getAttribute("quecount");
 System.out.println("--qscnt--"+qscnt);
 Integer qlevel=null;
 
 System.out.println("hai1");
int count;
if(tcount==null)
{
System.out.println("---1--");
 count=0;
}
else
{
System.out.println("---2--");
count=tcount.intValue();
}
 System.out.println("Count value :"+count);
int qscnt1=qscnt.intValue();
int qno3=qno2.intValue();
System.out.println(qno3);
System.out.println("hai2");
%>



<% String op=request.getParameter("D1"); %>
<%	//String bid = request.getParameter("bid");
System.out.println("--op--"+op);
          
		  qlevel=(Integer)session.getAttribute("quelevel");
		  System.out.println("--qlevel--"+qlevel);
		  int ql = qlevel.intValue();
		   System.out.println("--q1--"+ql);
		  String bids=(String)session.getAttribute("mybid");
          int bid=Integer.parseInt(bids);
           System.out.println("--bid--"+bid);
          String query = "select * from test_queries where batchid="+bid+" and level="+ql ;
          System.out.println("--query--"+query);
		ResultSet rs=obj.seekLogin1(query); 
	while(rs.next())
	{
	if((op.compareTo(rs.getString(7)))==0)
	{
	
	  session.setAttribute("count",new Integer(count+1));
	}	
	System.out.println("compared");
	System.out.println(count);
                //Integer qno4= new Integer(qno3+1);
              

                 
             %>
<p align="center">
<p align="center">
<p align="center">
<p align="center">
<b><font color="#CA6ACA">
</font></b>

	<%
	}
 String myq= "select QUES_NUMBER from test_queries where batchid="+bid+" and level="+ql ;
 System.out.println("--query2--"+myq);
				 ResultSet myrs = obj.seekLogin1(myq);
				               int flag=0;
							   while(myrs.next())
		                         {  
								   
								   if(qno3==myrs.getInt(1))
									 {
									   flag=1;
									   System.out.println("Flag value in first if:"+ qno3);
									 }
									
									 if(flag==1)
									 {
										 if(myrs.next())
										 {
										  qno3=myrs.getInt(1);
										  System.out.println("Flag value in second if:"+ qno3);
										  Integer qno4 =  new Integer(qno3);
										  System.out.println("--qno4--"+qno4);
                                          session.setAttribute("tqno",qno4);
										  break;
										 }
										 else
										 {
											  System.out.println("All Questions are finished");
											  session.setAttribute("tqno",new Integer(qscnt1+1));
										 }

									 }
								 }

%>
<jsp:forward page="onlinetest.jsp"/>










	

