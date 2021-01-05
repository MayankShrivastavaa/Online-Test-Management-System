<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*"%>
<jsp:useBean id="obj" class="db.onBean" />

<html>
<head>
<title>Tutor Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body {
	background-color: #b6c7e5;
}
-->
</style>
<link href="../ISSCSS.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {
	font-size: 12pt
}
-->
</style>
</head>

<body>

	<p>&nbsp;</p>
	<h2 align="center" class="GreaterThan">
		<span class="menuitems style1">Institution Details </span>
	</h2>
	<form name="frm" method="post" action="/OnlineTest/TutorInsert">
		<table width="341" border="0" align="center" bgcolor="5350b9">
			<tr>
				<td colspan="2"><div align="center"></div></td>
			</tr>
			<tr>
				<td width="109" class="menuitems">Institution ID</td>

				<%
					int id = obj.getMaxId("tutor", "TUTORID");
				if (id == 1)
					id = 2000;
				%>
				<td width="216"><input name="tutid" type="text" id="tutid"
					value="<%=id%>"></td>
			</tr>
			<tr>
				<td class="menuitems">Institution Name</td>
				<td><input name="tnam" type="text" id="tnam"></td>
			</tr>
			<tr>
				<td class="menuitems">University</td>
				<td><input name="quali" type="text" id="quali"></td>
			</tr>
			<tr>
				<td class="menuitems">Experience</td>
				<td><input name="exp" type="text" id="exp"></td>
			</tr>
			<tr>
				<td class="menuitems">Address</td>
				<td><textarea name="addr" id="addr"></textarea></td>
			</tr>
			<tr>
				<td class="menuitems">Email</td>
				<td><input name="email" type="text" id="email"></td>
			</tr>
			<tr>
				<td class="menuitems">phone</td>
				<td><input name="phno" type="text" id="phno"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit"
					name="Submit" value="Submit"></td>
			</tr>
		</table>
		<p>&nbsp;</p>
	</form>
	<p>&nbsp;</p>
</body>
</html>
