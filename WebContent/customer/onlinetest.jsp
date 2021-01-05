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
<%
System.out.println("First in onlinetest...");
//String ss=(String)session.getAttribute("str1");
//Integer slogid=(Integer)session.getAttribute("slogin1");
String ses_cust_id=(String)session.getAttribute("ses_cust_id");
int sn2=Integer.parseInt(ses_cust_id);
String bids=(String)session.getAttribute("mybid");
int bid=Integer.parseInt(bids);
System.out.println("THIS IS IN ONLINETEST:"+bid);
//String bid = request.getParameter("bid");
%>
<%!
		int a,tqno,result,totcnt;
                int min=3;
	Integer tqnos,tresult,qlevel=null;

%>


<%
	 String query= "select  *  from test_queries";
	ResultSet n=obj.seekLogin1(query);
	totcnt= 0;
  	 while(n.next())
  	 {
  	  totcnt++;
   	 }
	 System.out.println("No of Qs : "+totcnt);
%>

<% qlevel=(Integer)session.getAttribute("quelevel");%>
<%
      int ql = qlevel.intValue();
	 System.out.println("THIS IS LEVEL VALUE:"+ql);
	 String actque= "select  *  from test_queries where batchid="+bid+" and level="+ql ;
	ResultSet actrs=obj.seekLogin1(actque);
	a= 0;
  	 while(actrs.next())
  	 {
  	  a++;
   	 }
	 System.out.println("No of Qs with level bid: "+a);
%>

<%
	
    tresult=(Integer)session.getAttribute("count");
	System.out.println(tresult);
	if(tresult==null)
	{
	result=0;
	}
	else
	{
	result=tresult.intValue();
	}

		tqnos=(Integer)session.getAttribute("tqno");
		session.setAttribute("quecount",new Integer(totcnt));
		System.out.println(tqnos);
	if(tqnos==null)
	{
	        System.out.println("This will Execute only once");
			String myq= "select QUES_NUMBER from test_queries where batchid="+bid+" and level="+ql ; 
			System.out.println("--query--"+myq);
	        ResultSet myrs = obj.seekLogin1(myq);
			if(myrs.next())
	       	{
	       		System.out.println("--1---");
				tqno = myrs.getInt(1);
	        	session.setAttribute("tqno",new Integer(tqno));
			}
    }
	else
	{
		System.out.println("--2---");
		tqno=tqnos.intValue();
		System.out.println(tqno);
		session.setAttribute("tqno",new Integer(tqno));
	}
	/*
	tqnos=(Integer)session.getAttribute("tqno");
	System.out.println(tqnos);
	if(tqnos==null)
	{
	   tqno=1;
	   System.out.println("--3---"+tqno);
	   session.setAttribute("tqno",new Integer(tqno));
    }
	else
	{
	 tqno=tqnos.intValue();
	 System.out.println("--4--"+tqno);
	 session.setAttribute("tqno",new Integer(tqno));
	}*/

	System.out.println("123456789");
	System.out.println(tqno);
	System.out.println(totcnt);
	if(tqno<=totcnt)
	{
	  System.out.println("--5--"+tqno);
	   try
		{
		String strs="select * from test_queries where ques_number="+tqno+" and batchid="+bid+" and level="+ql;
		System.out.println("--swathiquery--"+strs);
		ResultSet rs=obj.seekLogin1(strs);
		if(rs.next())
		{%>

<p>&nbsp;</p>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" width="669" height="337">
    <tr>
    <td width="661" colspan="4" style="height: 4.5pt; padding: 2.25pt" align="center">
      <p align="center" style="text-align:center;mso-line-height-alt:4.5pt"><span style="font-size:13.5pt;font-family:Verdana;color:green">Welcometo Online Test</span></p>
    </td>
    </tr>
    <tr>
    <td width="14" style="height: 3.75pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right">&nbsp;<span style="font-size:4.0pt;mso-bidi-font-size:12.0pt"><o:p>
      </o:p>
      </span></p>
    </td>
    <td width="48" style="height: 3.75pt; padding: 2.25pt">
      <p class="MsoNormal" align="center" style="text-align:center">&nbsp;<span style="font-size:4.0pt;mso-bidi-font-size:12.0pt"><o:p>
      </o:p>
      </span></p>
    </td>
    <td width="4" style="height: 3.75pt; padding: 2.25pt">
      <p class="MsoNormal">&nbsp;<span style="font-size:4.0pt;mso-bidi-font-size:12.0pt"><o:p>
      </o:p>
      </span></p>
    </td>
    <td width="571" valign="top" style="height: 3.75pt; padding: 2.25pt">
     <p class="MsoNormal" style="mso-line-height-alt:3.75pt"><span style="font-size:
       10.0pt;font-family:Verdana"><font color="#008080"><b>Hi</b></font>&nbsp; <b><span style="color: #FF6600"><%=ses_cust_id%>&nbsp;&nbsp;
     </span><span style="font-size:7.5pt;font-family:Verdana"><font color="#008080">Begin your
      	test.&nbsp;</font></span>
     <span style="color: #FF6600">
<table width="623">
    <tr>
    <td width="593" colspan="4" style="height: 7.5pt; padding: 2.25pt" align="center">
      <div class="MsoNormal" align="center" style="text-align:center;mso-line-height-alt:7.5pt">
        <hr size="3" width="100%" noshade color="green" align="center">
      </div>
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:7.5pt">&nbsp;</p>
    </td>
    </tr>
    <form action="onlinecheck.jsp?bid=<%=bid%>" method="post">


      </span></b>


    <tr>
    <td width="62" style="height: 15.75pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right"><span style="font-size:7.5pt;font-family:Verdana"><font color="#008080"><b>Q</b></font></span></span><b><span style="font-size: 10.0pt; font-family: Verdana; color: #FF6600">
      .<span style="font-size:7.5pt;font-family:Verdana"> No :- </span></p>
    </td>
    <td width="8" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal" align="center" style="text-align:center"></p>
    </td>
    <td width="11" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal"><b><%=rs.getInt(1)%>&nbsp;:</b></p>
    </td>

    <td width="500" valign="top" style="height: 15.75pt; padding: 2.25pt">
      <p class="MsoNormal"><span style="font-size:10.0pt;font-family:Verdana"><%=rs.getString(2)%>?.</span></p>
    </td>
    </tr>
    <tr>
    <td width="62" style="height: 79.5pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    <td width="8" style="height: 79.5pt; padding: 2.25pt">
      <p class="MsoNormal" align="center" style="text-align:center">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    <td width="11" style="height: 79.5pt; padding: 2.25pt">
      <p class="MsoNormal">&nbsp;<o:p>
      </o:p>
      </p>
    </td>
    </span>
    <td width="500" style="height: 79.5pt; padding:2.25pt">
      <table border="0" cellpadding="0" width="500" style="mso-cellspacing:1.5pt">
        <tr>
          <td width="121" style="padding:.75pt">
            <p align="right" style="text-align:right"><span style="font-family: Verdana; color: #FF6600"><font size="2">Select Ur Answer</font></span></p>
          </td>
          <span style="font-size: 10.0pt; font-family: Verdana; color: #FF6600">
          <td width="124" style="padding: .75pt">
            <p class="MsoNormal"><span style="font-size:7.5pt;font-family:Verdana">

            <select NAME="D1" size="1">
            <option><%=rs.getString(3)%></option>
            <option><%=rs.getString(4)%></option>
            <option><%=rs.getString(5)%></option>
            <option><%=rs.getString(6)%></option>
            </select>&nbsp;&nbsp;&nbsp;&nbsp;</span></p>

          </td>
        </tr>
      </table>
      <p class="MsoNormal"><o:p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:
  10.0pt;font-family:Verdana"><b><span style="color: #FF6600"><input TYPE="submit" NAME="B1" value=" Next "></span></b></span></o:p>
      </p>
    </td>
    </tr>
    <tr>
    <td width="593" colspan="4" style="height: 2.25pt; padding: 2.25pt" align="center"></td>
    </tr>
    <tr>
    <td width="593" colspan="4" style="height: 2.25pt; padding: 2.25pt" align="center">
      <div class="MsoNormal" align="center" style="text-align:center;mso-line-height-alt:
  2.25pt">
        <hr size="1" width="100%" noshade color="green" align="center">
      </div>
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:
  2.25pt">&nbsp;</p>
    </td>
</tr>

<tr>
    <td width="593" colspan="4" style="height: 3.75pt; padding: 2.25pt" align="center">
      <p class="MsoNormal" align="right" style="text-align:right;mso-line-height-alt:
  3.75pt"></p>
    </td>
    </tr>
    <tr>
      <td width="66" height="337" align="center"></td>
    </tr>
    </form>
    <td width="66">
<p class="MsoNormal">&nbsp;<o:p>
</o:p>
</p>
      </center>
      <p align="left">
    <%}
}

catch(Exception e)
{
 System.out.println("error"+e);
}


}

else
{%><TR>
          <TD vAlign=top width=771
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771
    bgColor=#ffffff>
            <p align="center"><b>Online Test has been Completed..</b>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771
    bgColor=#ffffff>&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </p>
          </TD></TR>






		<%

System.out.println("Tot q: "+a);

if(result>0)
{%><TR>
          <TD vAlign=top width=771
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
		<%
		System.out.println("Total correct ans :"+result);
		float per = ((float)result/a)*100;
		if(per > 50.0)
		{
		Calendar cal = new GregorianCalendar();
		    int month = cal.get(Calendar.MONTH);
		    int year = cal.get(Calendar.YEAR);
		    int day = cal.get(Calendar.DAY_OF_MONTH);
			month=month+1;
//		  month=month;
			String month1="",day1="";
		    if(month<10)
		    {
		    month1="0"+month;
		    }
		    if(day<10)
		    {
		    day1="0"+day;
		    }
		    System.out.println("Current date : " + day + "/" + month + "/" + year);
		    System.out.println("Current date : " + day1 + "/" + month1 + "/" + year);
			String curdate="";
		if(day1!="")
		{
			if(month1!="")
			{	
				curdate=day1 + "-" + month1 + "-" + year;
				
			}
			else
				curdate=day1 + "-" + month + "-" + year;
			    System.out.println("Current date1 : " +curdate);
		}	
		else if( month1!="")
		{
			if(day1!="")
			{	
				curdate=day1 + "-" + month1 + "-" + year;
				
			}
			else
				curdate=day + "-" + month1 + "-" + year;
			    System.out.println("Current date3 : " +curdate);
		}	
		else
		{
			curdate=day + "-" + month + "-" + year;
			System.out.println("Current date2 : " +curdate);
		}	
		
		System.out.println("SeekId : "+sn2);
			String query2 = "UPDATE ONLINE_TESTLOGIN SET STATUS='TAKEN',RESULT='"+per+"' WHERE cust_id='"+sn2+"' and exmdate like '"+curdate+"'";
			obj.updatTbl(query2);
			%>
          <TD vAlign=top width=771 bgColor=#ffffff>
		  <p align="center"><b>Ur Result..<b> is...:</b></b><%="Congrats u passed this test and ur percentage is  " +per%><%= "%" %></TD></TR>
	<TR><TD vAlign=top
    bgColor=#ffffff><strong>We will contact u soon...! </strong></TD></TR>
		  <%}else
		  {
		  System.out.println("Deleting record...");
		  	String qu = "UPDATE ONLINE_TESTLOGIN SET STATUS='TAKEN',RESULT='"+per+"' WHERE cust_id='"+sn2+"' and exmdate like '26-05-2009'";
			obj.updatTbl(qu);%>
          <TR>
            
          </TR>
        <TR>
          <TD vAlign=top width=771
    bgColor=#ffffff><div align="left"><%= "Sorry ur not qualified....And ur percentage.."+per%>
              </div></TD>
        </TR>
		  <%}%>
        <TR>
          <TD vAlign=top width=771
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </p>


          </TD></TR>





		<%
			


}
else
{
	int perc = 0;
	String qu3 = "UPDATE ONLINE_TESTLOGIN SET STATUS='TAKEN',RESULT='"+perc+"' WHERE cust_id='"+sn2+"' and exmdate like '26-05-2009'";
			obj.updatTbl(qu3);
%><TR>
          <TD vAlign=top width=771
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771
    bgColor=#ffffff>
            <p align="center"><b>Sorry u not Qualified...Ur aggregate is ...<%=perc%>%</b>
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







<%}
session.removeAttribute("tqno");
session.removeAttribute("count");
}
%>



      </table>
</table>



</body>
