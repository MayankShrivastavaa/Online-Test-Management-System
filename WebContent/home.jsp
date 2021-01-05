<html>
<link href="erpstyles.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
@import url("ISSCSS.css");
body {
	background-color: #E6D8F1;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {COLOR: #0063c9; FONT-FAMILY: Arial; font-size: 12px;}
.style2 {color: #40166C}
-->
</style>
<body>





<center>
  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <th colspan="3" background="images/toppatch.jpg" scope="col"><div align="left">
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="74%"><img src="images/onlinetraining.jpg" width="775" height="125"></td>
            <td width="26%"><table width="225" height="125" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="72" height="66"><img src="images/civil005.jpg" width="60" height="60"></td>
                <td width="70"><img src="images/elecprinciples.jpg" width="60" height="60"></td>
                <td width="83"><img src="images/elecl003.jpg" width="60" height="60"></td>
              </tr>
              <tr>
                <td height="60"><img src="images/JavaDoctor.jpg" width="60" height="60"></td>
                <td><img src="images/profjava.jpg" width="60" height="60"></td>
                <td><img src="images/mech004.jpg" width="60" height="60"></td>
              </tr>
            </table></td>
          </tr>
        </table>
      </div></th>
    </tr>
    <tr>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td width="59%" class="Sitemap1">Books</td>
      <td width="38%" rowspan="12"><div align="center">
        <table width="352" height="151" align="right" cellpadding="0" cellspacing="0" background="images/loginpatch.jpg" class="TableBorder">
         <%String temps=request.getParameter("result");
if(temps!= null)
{
out.println(temps);
}%>
		  
		  <form method="post" action="LoginServlet">
            
			<Tr class="ChannelLabel2">
              <td class="username"><div align="right" class="style2">UserName:</div></Td>
              <td><input name="login" type="text"></td>
            <tr class="ChannelLabel2">
              <td class="username"><div align="right" class="style2">Password:</div></td>
              <td><input name="pwd" type="password"></td>
            <tr class="ChannelLabel2">
              <Td>
                  <div align="center" class="style2">
                    <div align="center">
                      <input type="radio" name="radio" value="customer"   checked>
                      User</div>
                </div></Td>
              <Td><div align="center" class="style2">
                    <div align="center">
                      <input type="radio" name="radio" value="tutor">
 Institution</div>
              </div></td>
            <tr class="ChannelLabel2">

              <Td colspan="2"><div align="center" class="style2"><span class="newuser">new User </span> <a href="batinfo.jsp">SEE Details</a></div>                <div align="center"><span class="style2"></span></div></td>
              <tr class="ChannelLabel2">
              <td colspan="2"><div align="center" class="style2">
                    <input name="submit" type="submit" value="send">
                    <input name="reset" type="reset" value="reset">            
              </div>              
            </tr>
          </form>
        </table>
      </div></td>
      <td width="3%" rowspan="12">&nbsp;</td>
    </tr>
    <tr>
      <td class="style1"><a href="documents/html40.pdf">Quick learn Html </a></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1"><a href="documents/Corba_14Days/index.htm">Learn corba in 24 days</a></span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1">servlets <a href="documents/servlets/CH01.HTM">ch1</a> <a href="documents/servlets/CH02.HTM">ch2</a> <a href="documents/servlets/CH03.HTM">ch3</a> <a href="documents/servlets/CH04.HTM">ch4 </a></span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1"><a href="documents/ejbl.doc">Enterprise Java Beans</a> </span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1"><a href="documents/Using%20WebLogic%20JDBC.htm">weblogic JDBC </a></span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1"><a href="documents/vb.html">visual Basic </a></span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1"><a href="documents/Visual%20Studio_Net%20-%202.htm">Visual Studio_Net - 2</a></span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1"><a href="documents/Visual%20Studio_Net%20-%203.html">Visual Studio_Net - 3</a></span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1"><a href="documents/Visual%20Studio_Net%20-%20Controls%20and%20Add-ins.htm">Visual Studio_Net - Controls and Add-ins</a></span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1">Xml guide <a href="documents/xml_guide/guide0.html">part1</a> <a href="documents/xml_guide/guide1.html">part2</a> <a href="documents/xml_guide/guide2.html">part3</a><a href="documents/xml_guide/guide5.html"> part4 part5 part6 </a></span></td>
    </tr>
    <tr>
      <td class="PHText"><span class="style1"><a href="documents/XML%20Web%20Services%20and%20SOAP.htm">XML Web Services and SOAP</a></span></td>
    </tr>
    <tr>
      <td colspan="3"><p>&nbsp;</p>      </td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" class="ChannelLabel">&nbsp;</td>
    </tr>
  </table>
  <br>
</center>
</body>
</html>