<%@ page import="java.sql.*,javax.sql.*,java.util.*,db.*" session="true" %>
<jsp:useBean id="obj" class="db.onBean"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../mail_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	background-color: #b6c7e5;
}
-->
</style></head>
<% String tut_id=(String)session.getAttribute("ses_tut_id");%>
<body>
<form name="form1" method="post" action="/OnlineTest/InsertTest">
<table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#5350B9">
  <tr>
    <td colspan="6" class="headlinewhite"><div align="center">Test
      <hr>
    </div></td>
  </tr>
  <tr>
    <td colspan="6">&nbsp;</td>
  </tr>
  <tr>
    <td width="105"><div align="right" class="bodywhite">Select Batch : </div></td>
    <td width="14">&nbsp;</td>
    <td width="63">
	<select name="batchId" id="batchId">
    <%	Enumeration e = (obj.getbattutIds(tut_id)).elements();
   		while(e.hasMoreElements())
		{	
			String id = (String)e.nextElement();	%>
      		<option value="<%=id%>"><%=id%></option>
   	<%	}	%>
    </select></td>
    <td width="86"><div align="right" class="bodywhite">Exam Date : </div></td>
    <td width="10">&nbsp;</td>
    <td width="222"><SELECT id=select size=1 name=sday>
      <OPTION 
  value=1 selected>1</OPTION>
      <OPTION value=2>2</OPTION>
      <OPTION 
  value=3>3</OPTION>
      <OPTION value=4>4</OPTION>
      <OPTION value=5>5</OPTION>
      <OPTION 
  value=6>6</OPTION>
      <OPTION value=7>7</OPTION>
      <OPTION value=8>8</OPTION>
      <OPTION 
  value=9>9</OPTION>
      <OPTION value=10>10</OPTION>
      <OPTION 
  value=11>11</OPTION>
      <OPTION value=12>12</OPTION>
      <OPTION 
  value=13>13</OPTION>
      <OPTION value=14>14</OPTION>
      <OPTION 
  value=15>15</OPTION>
      <OPTION value=16>16</OPTION>
      <OPTION 
  value=17>17</OPTION>
      <OPTION value=18>18</OPTION>
      <OPTION 
  value=19>19</OPTION>
      <OPTION value=20>20</OPTION>
      <OPTION 
  value=21>21</OPTION>
      <OPTION value=22>22</OPTION>
      <OPTION 
  value=23>23</OPTION>
      <OPTION value=24>24</OPTION>
      <OPTION 
  value=25>25</OPTION>
      <OPTION value=26>26</OPTION>
      <OPTION 
  value=27>27</OPTION>
      <OPTION value=28>28</OPTION>
      <OPTION 
  value=29>29</OPTION>
      <OPTION value=30>30</OPTION>
      <OPTION 
value=31>31</OPTION>
    </SELECT>
	<SELECT id=select3 size=1 name=smonth>
       <OPTION value=01 selected>january</OPTION>
      <OPTION 
  value=02>february</OPTION>
      <OPTION value=03>march</OPTION>
      <OPTION 
  value=04>april</OPTION>
      <OPTION value=05>may</OPTION>
      <OPTION 
  value=06>june</OPTION>
      <OPTION value=07>july</OPTION>
      <OPTION 
  value=08>august</OPTION>
      <OPTION value=09>september</OPTION>
      <OPTION 
  value=10>october</OPTION>
      <OPTION value=11>november</OPTION>
      <OPTION 
  value=12>december</OPTION>
    </SELECT>
	<INPUT style="WIDTH: 67px; HEIGHT: 22px" size=8 name=syear></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td class="topbodywhite">(DD/MM/YYYY)</td>
  </tr>
  <tr>
    <td colspan="6"><div align="center">
      <input name="Submit" type="submit" class="buttonwhite" value="Submit">
    </div></td>
  </tr>
</table>
<p align="center"></p>
</form>
</body>
</html>
