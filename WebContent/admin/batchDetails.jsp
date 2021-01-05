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
<FORM name="refrm" METHOD=post  ACTION="/OnlineTest/batch_Modify" >

<table width="99%"  border="0" align="center" cellpadding="0" cellspacing="0" class="border">
  <tr>
    <th bgcolor="#6076B0" scope="col">&nbsp;</th>
    <th bgcolor="#6076B0" scope="col"><div align="left" class="menuitems">Batch Details: </div></th>
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
Hashtable h=obj.getBatchDetails(pid);
%></td>
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
          <td align="right" class="MenuStyles"><div align="right">BDESC:</div></td>
          <td><input name=BDESC class="border" id=cust_name2 value="<%=h.get("BDESC")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">STARTDATE:</div></td>
          <td><input name=startdate class="border" id=contact_person2 value="<%=h.get("startdate")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">ENDDATE:&nbsp;</div></td>
          <td><input name=enddate class="border" id=addr12 value="<%=h.get("enddate")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">COURSEID:</div></td>
          <td><input name=COURSEID class="border" id=addr22 value="<%=h.get("COURSEID")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">INSTITUTION ID:</div></td>
          <td><input name=TUTORID class="border" id=city2 value="<%=h.get("TUTORID")%>"></td>
        </tr>
		
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">STRENGTH:</div></td>
          <td><input name=STRENGTH class="border" id=city2 value="<%=h.get("STRENGTH")%>"></td>
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
