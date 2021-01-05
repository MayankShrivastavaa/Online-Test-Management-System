<%@ page import="javax.sql.*, java.sql.*,java.util.*,db.*" %>
<jsp:useBean id="obj" class="db.onBean" /> <html>
<%String bidps=request.getParameter("bids");%>
<HTML>
<HEAD>
<script>
function validate()
{
document.refrm.action="viewresult.jsp";
document.refrm.submit();
}
function validate1()
{
document.refrm.action="viewresult.jsp";
document.refrm.submit();
}
</script>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<link href="../ISSCSS.css" rel="stylesheet" type="text/css">
<link href="../port.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #EFF2F7;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>
<body >
<FORM name="refrm">
<%
if (bidps==null)
     bidps="";
%>
<table width="99%"  border="0" align="center" cellpadding="0" cellspacing="0" class="border">
  <tr>
    <th bgcolor="#6076B0" scope="col">&nbsp;</th>
    <th bgcolor="#6076B0" scope="col"><div align="left" class="menuitems">Results</div></th>
  </tr>
  <tr>
    <th scope="col">&nbsp;</th>
    <th scope="col"><div align="left">
      
    </div></th>
  </tr>
  <tr>
    <th width="1%" scope="col">&nbsp;</th>
    <th width="99%" scope="col"><div align="center">
      <table width="75%"  border="0" align="center" cellpadding="0" cellspacing="0" class="border">
        <tr>
          <td width="5%"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="4" align="right" class="MenuStyles"><div align="center" class="MenuStyles">View Result </div></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2" align="right" class="MenuStyles">&nbsp;</td>
          <td colspan="2">&nbsp;</td>
        </tr>
		<% Vector cids1 = new Vector();
  cids1=obj.getIds("batch","BATCHID");%>
        <tr>
          <td>&nbsp;</td>
          <td width="24%" align="right" class="HighLight"><div align="right">Select  Batch Id:</div></td>
          <td width="19%" align="right" class="text1"><div align="left">
            <select name="bids" onChange="validate()">
            <option>--select--</option>
              <% if(bidps== null){ System.out.println("In if....");%>
              <option value=" "> </option>
              <%  	} %>
              <% Enumeration venum1 = cids1.elements();
			while (venum1.hasMoreElements())   {
			String incci1=(String)venum1.nextElement();%>
              <option  value="<%= incci1%>"<%if((bidps!=null) && bidps.equals(incci1)){%>selected<%}%>><%= incci1%></option>
              <%}%>
            </select>
          </div></td>
          <td width="17%"><div align="left"></div>
            <div align="right"><span class="HighLight">Date:</span></div></td>
          <td width="35%"><span class="text1">
            <select name="date" class="border" onChange="validate1()">
              <%
		
		Hashtable h=null;
		Hashtable ht = null;
		String ca = new String();
		String i_id=request.getParameter("date");
		String table="";
		
		h=obj.getexamdates(bidps);
		if(h.isEmpty())
		   i_id = null;   
		if(i_id==null)
		  i_id="";
			if(i_id.equals(""))
			{
	%>
              <option value=""></option>
              <%      for (Enumeration e = h.keys() ; e.hasMoreElements() ;)
	        {
			   String id=(String)e.nextElement(); %>
              <option value=<%=id%>><%=id%></option>
              <%      }
	        }
	        else
	        {
	          for (Enumeration e = h.keys() ; e.hasMoreElements() ;)
			  {
				String id=(String)e.nextElement(); 
				if(i_id.equals(id))
				{
				  ht=obj.getexamresults(bidps,i_id);
				}	
		%>
              <option value="<%=id%>"<%if(i_id.equals(id)){%>selected<%}%>><%=id%></option>
              <%  }
            }%>
            </select>
          </span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2" align="right" class="text1">&nbsp;</td>
          <td colspan="2"><span class="text1">
          </span></td>
        </tr>
		<%	
		
		  if(ht != null){  %>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2" align="right" class="MenuStyles">&nbsp;</td>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="4" align="right" class="MenuStyles"><TABLE width="75%" border=1 align="center" cellPadding=0 cellSpacing=0 class="border">
            <TR class="Sitemap1">
              <TH height="20" class="border">User_id</TH>
              <TH height="20" class="border">Status</TH>
              <TH height="20" class="border">Result</TH>
              </tr>
            <%
		for (Enumeration e = ht.keys() ; e.hasMoreElements() ;) 
		{
			String id=(String)e.nextElement();
			StringTokenizer str=new StringTokenizer((String)ht.get(id),"?&");
%>
            <TR>

              <TD height="20" class="border"><%=id%></TD>
              <%
	 while (str.hasMoreTokens()) {
%>
              <TD height="20" class="border"><%=str.nextToken()%></TD>
              <%
		}
   %>
			
            </tr>
            <%
}
%>
          </TABLE></td>
          </tr>
        
        <tr>
          <td>&nbsp;</td>
          <td colspan="2" align="right" class="MenuStyles"><div align="right"></div></td>
          <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="4" align="right"><div align="center">
            </div></td>
          </tr>
      </table>
	   <%
	}
	
	%>
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
