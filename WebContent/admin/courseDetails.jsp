<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" />
<% int pid=Integer.parseInt(request.getParameter("pid"));%>

<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="../../scm/ISSCSS.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #d8e1f9;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>
<body >
<FORM name="refrm" METHOD=post  ACTION="/OnlineTest/course_Modify" >

<table width="99%"  border="0" align="center" cellpadding="0" cellspacing="0" class="border">
  <tr>
    <th bgcolor="#6076B0" scope="col">&nbsp;</th>
    <th bgcolor="#6076B0" scope="col"><div align="left" class="menuitems">Course Details: </div></th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
    <th scope="col"><div align="left">
      <input type="hidden" name="pid" value="<%=pid%>">
    </div></th>
  </tr>
  <tr>
    <th width="1%" scope="col">&nbsp;</th>
    <th width="99%" scope="col"><div align="center">
      <table width="75%"  border="0" align="center" cellpadding="0" cellspacing="0" class="border">
        <tr>
          <td width="5%"><%
Hashtable h=obj.getCourseDetails(pid);
%></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">COURSEID:</div></td>
          <td><input name=COURSEID class="border" id=cust_name2 value="<%=h.get("COURSEID")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">NAME:</div></td>
          <td><input name=NAME class="border" id=cust_name2 value="<%=h.get("NAME")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">DURATION:</div></td>
          <td><input name=DURATION class="border" id=contact_person2 value="<%=h.get("DURATION")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">COST:&nbsp;</div></td>
          <td><input name=COST class="border" id=addr12 value="<%=h.get("COST")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">CDESC:</div></td>
          <td><input name=CDESC class="border" id=addr22 value="<%=h.get("CDESC")%>"></td>
        </tr>
        
        <tr>
          <td>&nbsp;</td>
          <td colspan="2" align="right"><div align="center">
            <input id=sub_modify5 type=submit value=Modify name=sub_modify>
            <input id=sub_modify4 type=submit value=delete name=sub_modify>
            </div></td>
          </tr>
      </table>
    </div></th>
  </tr>
</table>
<br>
<H3>
<P>&nbsp;</P></H3>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
    </tr>
</table>
</form>
</BODY>
</HTML>
