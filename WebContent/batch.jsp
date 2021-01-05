<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" /> <html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<form name="frm" method="post" action="/OnlineTest/BatchInsert">
<% Vector cids1 = new Vector();
Vector cid2 = new Vector();


cids1=obj.getIds("course","COURSEID");
cid2=obj.getIds("tutor","TUTORID");

%>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="312" border="1" align="center">
  <tr>
    <td colspan="2"> <div align="center">Batch Details </div></td>
  </tr>
  <tr>
    <td width="118">Batch Id </td>

<%  int id=obj.getMaxId("batch","BATCHID");%>
    <td width="178"><input type="text" name="bid" value="<%= id%>" readonly=""></td>
  </tr>
  <tr>
    <td>Batch Name </td>
    <td><input type="text" name="bname"></td>
  </tr>
  <tr>
    <td>CourseID</td>
    <td><select name="cid">

<% Enumeration venum1 = cids1.elements();
while (venum1.hasMoreElements())   {
			String incci1=(String)venum1.nextElement();%>
              
			  <option  ><%= incci1%></option>
              <%}%> 
          </select></td>


   
  </tr>
  <tr>
    <td>TutorID</td>
    <td><select name="tid">
	<% Enumeration venum2 = cid2.elements();
while (venum2.hasMoreElements())   {
			String incci2=(String)venum2.nextElement();%>
              
			  <option  ><%= incci2%></option>
              <%}%> 
          </select></td>
    </select></td>
  </tr>
  <tr>
    <td>Start Date </td>
    <td><SELECT id=select size=1 name=sday>
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
    </SELECT></td><td><SELECT id=select3 size=1 name=smonth>
       <OPTION value=0 selected>january</OPTION>
      <OPTION 
  value=1>february</OPTION>
      <OPTION value=2>march</OPTION>
      <OPTION 
  value=3>april</OPTION>
      <OPTION value=4>may</OPTION>
      <OPTION 
  value=5>june</OPTION>
      <OPTION value=6>july</OPTION>
      <OPTION 
  value=7>august</OPTION>
      <OPTION value=8>september</OPTION>
      <OPTION 
  value=9>october</OPTION>
      <OPTION value=10>november</OPTION>
      <OPTION 
  value=11>december</OPTION>
    </SELECT></td><td>  <INPUT 
style="WIDTH: 67px; HEIGHT: 22px" size=8 name=syear></td>
    
  </tr>
  <tr>
    <td>End Date </td><td>
   <SELECT id=select size=1 name=eday>
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
value=31>31</OPTION><
    </SELECT></td><td><SELECT id=select3 size=1 name=emonth>
       <OPTION value=0 selected>january</OPTION>
      <OPTION 
  value=1>february</OPTION>
      <OPTION value=2>march</OPTION>
      <OPTION 
  value=3>april</OPTION>
      <OPTION value=4>may</OPTION>
      <OPTION 
  value=5>june</OPTION>
      <OPTION value=6>july</OPTION>
      <OPTION 
  value=7>august</OPTION>
      <OPTION value=8>september</OPTION>
      <OPTION 
  value=9>october</OPTION>
      <OPTION value=10>november</OPTION>
      <OPTION 
  value=11>december</OPTION>
    </SELECT></td><td>
  <INPUT 
style="WIDTH: 67px; HEIGHT: 22px" size=8 name=eyear></td>
    

  </tr>
  <tr>
    <td>Strength</td>
    <td><input type="text" name="str"></td>
  </tr>
  <tr>
    <td height="24" class="MenuStyles">Description</td>
    <td><textarea name="descp" ></textarea></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" colspan="2"><input type="submit" name="Submit" value="Submit"></td>
  </tr>
</table>
<p>&nbsp;</p>
</form>
</body>
</html>
