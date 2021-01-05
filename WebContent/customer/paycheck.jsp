<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" /> <html>
<head>
<title>PAYMENT Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="javascript">
function validateSel()
{
	document.form1.action = "paycheck.jsp";
	document.form1.submit();
}
function validate()
{
	document.form1.action = "/OnlineTest/payInserts";
	document.form1.submit();
}
</SCRIPT>
</head>



<body>
 <form name="form1" method="post" >
<% String sel = request.getParameter("selec");	

HttpSession ses=request.getSession(false);
String cidd=(String)ses.getAttribute("ses_cust_id");
System.out.println("ggggggggggggggggggggggg"+cidd);
String bids=(String)ses.getAttribute("ses_bid_id");
System.out.println("gggggggggggggggggggggggpppppppp"+bids);%>
 
  <input type="hidden" name="cidd" value="<%= cidd %>" >
<input type="hidden" name="bids" value="<%= bids %>" >

 
 <table>
 <tr>
        <td width="4"><div align="right">
        </div></td>
        <td width="249" class="ChannelLabel"><span class="lnk">select Payement Type</span> : </td>
		
        <td colspan="3">	
		<select name="selec" id="selec" onChange="validateSel()">	
<%		if(sel == null)
		{
			sel = " ";	%>
          	<option value="" selected></option>
<%		}	%>
          	<option   value="ByCreditCard" <%if(sel.equals("ByCreditCard")){%> selected <%}%> >ByCreditCard</option>
          	<option value="ByD.D" <%if(sel.equals("ByD.D")){%> selected <%}%>  >ByD.D</option>
          	</select></td>
      </tr>
      <tr>
	   <td>&nbsp;</td>
	  <td class="HighLight"><span class="text"> Total Amount</span> :</td>

	  <% float rp=obj.getcostst(bids);%>
	  <td colspan="3"> <input name="camount" type="text" value="<%= rp%>" readonly ></td></tr>
	  
	  <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="HighLight"><span class="text">Credit card No</span> :</td>
        <td colspan="3"><input name="cardno" type="text" id="cardno" <%if(sel.equals("ByD.D")){%> disabled<%}%> ></td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td class="ChannelLabel"><span class="text1">D.D Details</span> : </td>
        <td colspan="3">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><span class="HighLight">D.D No :</span> </td>
        <td><input name=c_no type=text  id="c_no" <%if(sel.equals("ByCreditCard")){%>disabled <%}%>></td>
        <td width="102"><span class="HighLight"> Bank :</span></td>
        <td width="209"><input name="c_bank" <%if(sel.equals("ByCreditCard")){%> disabled <%}%>></td>
      </tr>
      <tr>
        <td colspan="5">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><span class="HighLight">D.D date:</span></td>
        <td width="205">		<select id="select" size="1" name="c_day" <%if(sel.equals("ByCreditCard")){%> disabled <%}%>>
          <option value="1" selected>1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value=6>6</option>
          <option value=7>7</option>
          <option value=8>8</option>
          <option value=9>9</option>
          <option value=10>10</option>
          <option value=11>11</option>
          <option value=12>12</option>
          <option value=13>13</option>
          <option value=14>14</option>
          <option value=15>15</option>
          <option value=16>16</option>
          <option value=17>17</option>
          <option value=18>18</option>
          <option value=19>19</option>
          <option value=20>20</option>
          <option value=21>21</option>
          <option value=22>22</option>
          <option value=23>23</option>
          <option value=24>24</option>
          <option value=25>25</option>
          <option value=26>26</option>
          <option value=27>27</option>
          <option value=28>28</option>
          <option value=29>29</option>
          <option value=30>30</option>
          <option value=31>31</option>
        </select>
        <select id="select2" size="1" name="c_month" <%if(sel.equals("ByCreditCard")){%> disabled <%}%>>
            <option value=january selected>january</option>
            <option value=february>february</option>
            <option value=mar>march</option>
            <option value=april>april</option>
            <option value=may>may</option>
            <option value=june>june</option>
            <option value=july>july</option>
            <option value=august>august</option>
            <option value=september>september</option>
            <option value=october>october</option>
            <option value=november>november</option>
            <option value=december>december</option>
        </select>
        <input name="c_year" type="text" size="6" <%if(sel.equals("ByCreditCard")){%>disabled <%}%>></td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="5"><span class="text1"></span></td>
      </tr>
      <tr>
 <input type="hidden" name="cidd" value="<%= cidd %>" >
<input type="hidden" name="bids" value="<%= bids %>" >
        <td colspan="5"><div align="center">
          <input type="button" name="Submit" value="Submit" onClick="validate()">
        </div></td>
      </tr>
	<tr>
	  <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="6"></td>
    </tr>
  </table>
</form>
</body>
</html>


