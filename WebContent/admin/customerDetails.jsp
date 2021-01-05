<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" />
<% String pid=request.getParameter("pid");%>

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
<FORM name="refrm" METHOD=post  ACTION="/OnlineTest/cust_Modify" >

<table width="99%"  border="0" align="center" cellpadding="0" cellspacing="0" class="border">
  <tr>
    <th bgcolor="#6076B0" scope="col">&nbsp;</th>
    <th bgcolor="#6076B0" scope="col"><div align="left"><img src="../../scm/images/customerdetaols.jpg" width="220" height="26"></div></th>
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
Hashtable h=obj.getCustomerDetails(pid);
%></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_NAME:</div></td>
          <td><input name=CUST_NAME class="border" id=cust_name2 value="<%=h.get("CUST_NAME")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_ADDRESS:</div></td>
          <td><input name=CUST_ADDRESS class="border" id=cust_name2 value="<%=h.get("CUST_ADDRESS")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_CITY:</div></td>
          <td><input name=CUST_CITY class="border" id=contact_person2 value="<%=h.get("CUST_CITY")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_STATE:&nbsp;</div></td>
          <td><input name=CUST_STATE class="border" id=addr12 value="<%=h.get("CUST_STATE")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_COUNTRY:</div></td>
          <td><input name=CUST_COUNTRY class="border" id=addr22 value="<%=h.get("CUST_COUNTRY")%>"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_FAX1:</div></td>
          <td><input name=CUST_FAX1 class="border" id=city2 value="<%=h.get("CUST_FAX1")%>"></td>
        </tr>
		
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_DOB:</div></td>
          <td><input name=CUST_DOB class="border" id=city2 value="<%=h.get("CUST_DOB")%>"></td>
        </tr>
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_MAIL:</div></td>
          <td><input name=CUST_MAIL class="border" id=city2 value="<%=h.get("CUST_MAIL")%>"></td>
        </tr>
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">SEX:</div></td>
          <td><input name=SEX class="border" id=city2 value="<%=h.get("SEX")%>"></td>
        </tr>
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_RESNO:</div></td>
          <td><input name=CUST_RESNO class="border" id=city2 value="<%=h.get("CUST_RESNO")%>"></td>
        </tr>
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_OFFNO:</div></td>
          <td><input name=CUST_OFFNO class="border" id=city2 value="<%=h.get("CUST_OFFNO")%>"></td>
        </tr>
		
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_MOBILE:</div></td>
          <td><input name=CUST_MOBILE class="border" id=city2 value="<%=h.get("CUST_MOBILE")%>"></td>
        </tr>
		<tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="right" class="MenuStyles"><div align="right">USER_ADD2:</div></td>
          <td><input name=CUST_ADD2 class="border" id=city2 value="<%=h.get("CUST_ADD2")%>"></td>
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
