<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<%
	String bid = request.getParameter("bids");
%>
<TITLE></TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body {
	background-color: #b6c7e5;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>

<script language="javascript">
	function isNumber(v) {
		var i;
		if (v.length == 0)
			return false;
		for (i = 0; i < v.length; i++)
			if (!(v.charAt(i) >= "0" && v.charAt(i) <= "9"))
				return false;
		return true;
	}

	function validate() {

		if (document.form1.txt_name.value == "") {
			alert("Please Enter Your Name, Should Not Be Blank");
			document.form1.txt_name.focus();
			return;
		}
		cname = document.form1.txt_name.value
		for (i = 0; i < cname.length; i++) {
			cn = cname.charAt(i)
			if ((cn >= 'A' && cn <= 'Z') || (cn >= 'a' && cn <= 'z')
					|| cn == ' ' || cn == '.') {
			} else {
				alert("Name Should Contain only alphabets");
				document.form1.txt_name.focus();
				return;
			}
		}
		if (cname.charAt(0) == ' ' || cname.charAt(0) == '.') {
			alert("Name should not start with spaces or periods");
			document.form1.txt_name.focus();
			return;
		}
		if (document.form1.txt_add1.value == "") {
			alert("Please Enter Your Address1, Should Not Be Blank");
			document.form1.txt_add1.focus();
			return;
		}
		if (document.form1.txt_add2.value == "") {
			alert("Please Enter Your Address2, Should Not Be Blank");
			document.form1.txt_add2.focus();
			return;
		}
		if (document.form1.txt_city.value == "") {
			alert("Please Enter City, Should Not Be Blank");
			document.form1.txt_city.focus();
			return;
		}
		if (document.form1.txt_state.value == "") {
			alert("Please Enter State, Should Not Be Blank");
			document.form1.txt_state.focus();
			return;
		}
		if (document.form1.txt_country.value == "") {
			alert("Please Enter Country, Should Not Be Blank");
			document.form1.txt_country.focus();
			return;
		}
		if (document.form1.txt_fax.value == "") {
			alert("Please Enter Fax No, Should Not Be Blank");
			document.form1.txt_fax.focus();
			return;
		}

		mob = document.form1.txt_fax.value

		for (i = 0; i < mob.length; i++) {
			if ((mob.charAt(i) >= '0' && mob.charAt(i) <= '9')) {
			} else {
				alert("Invalid Fax Number , Should Enter Only Numbers");
				document.form1.txt_fax.focus();
				return;
			}
		}

		if (mob != "") {
			if (mob.length < 10) {
				alert("Invalid Fax Number...Atleast 10 digits you have to supply");
				document.form1.txt_fax.focus();
				return;
			}

			if (document.form1.txt_fax.value > 0) {
				if (isNumber(document.form1.txt_fax.value) == false) {
					alert("Invalid Fax Number");
					document.form1.txt_fax.focus();
					return;
				}
			}
		}

		if (document.form1.txt_mail.value == "") {
			alert("Please Enter Mail Id, Should Not Be Blank");
			document.form1.txt_mail.focus();
			return;
		}
		emailStr = document.form1.txt_mail.value;

		if (emailStr != "") {
			var checkTLD = 1;
			var knownDomsPat = /^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum)$/;
			var emailPat = /^(.+)@(.+)$/;
			var specialChars = "\\(\\)><@,;:\\\\\\\"\\.\\[\\]";
			var validChars = "\[^\\s" + specialChars + "\]";
			var quotedUser = "(\"[^\"]*\")";
			var ipDomainPat = /^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
			var atom = validChars + '+';
			var word = "(" + atom + "|" + quotedUser + ")";
			var userPat = new RegExp("^" + word + "(\\." + word + ")*$");
			var domainPat = new RegExp("^" + atom + "(\\." + atom + ")*$");
			var matchArray = emailStr.match(emailPat);

			if ((emailStr.charAt(0) >= 'A' && emailStr.charAt(0) <= 'Z')
					|| (emailStr.charAt(0) >= 'a' && emailStr.charAt(0) <= 'z')) {
			} else {
				alert("EMail Address Should Start With Alphabet");
				document.form1.txt_mail.focus();
				return;
			}

			if (matchArray == null) {
				alert("Email address seems incorrect (check @ and .'s)");
				document.form1.txt_mail.focus();
				return;
			}
			var user = matchArray[1];
			var domain = matchArray[2];

			for (i = 0; i < user.length; i++) {
				if (user.charCodeAt(i) > 127) {
					alert("Ths username contains invalid characters.");
					document.form1.txt_mail.focus();
					return;
				}
			}

			for (i = 0; i < domain.length; i++) {
				if (domain.charCodeAt(i) > 127) {
					alert("Ths domain name contains invalid characters.");
					document.form1.txt_mail.focus();
					return;
				}
			}

			if (user.match(userPat) == null) {
				alert("Email username doesn't seem to be valid.");
				document.form1.txt_mail.focus();
				return;
			}

			var IPArray = domain.match(ipDomainPat);

			if (IPArray != null) {
				for (var i = 1; i <= 4; i++) {
					if (IPArray[i] > 255) {
						alert("Email Destination IP address is invalid!");
						document.form1.txt_mail.focus();
						return;
					}
				}
				return;
			}

			var atomPat = new RegExp("^" + atom + "$");
			var domArr = domain.split(".");
			var len = domArr.length;

			for (i = 0; i < len; i++) {
				if (domArr[i].search(atomPat) == -1) {
					alert("The Email domain name does not seem to be valid.");
					document.form1.txt_mail.focus();
					return;
				}
			}

			if (checkTLD && domArr[domArr.length - 1].length != 2
					&& domArr[domArr.length - 1].search(knownDomsPat) == -1) {
				alert("The Email address must end in a well-known domain or two letter "
						+ "country.");
				document.form1.txt_mail.focus();
				return;
			}

			if (len < 2) {
				alert("This Email address is missing a hostname!");
				document.form1.txt_mail.focus();
				return;
			}
		}
		if (document.form1.txt_resno.value == "") {
			alert("Please Enter Residence Phone No, Should Not Be Blank");
			document.form1.txt_resno.focus();
			return;
		}
		mob = document.form1.txt_resno.value

		for (i = 0; i < mob.length; i++) {
			if ((mob.charAt(i) >= '0' && mob.charAt(i) <= '9')) {
			} else {
				alert("Invalid Residence Phone No , Should Enter Only Numbers");
				document.form1.txt_resno.focus();
				return;
			}
		}

		if (mob != "") {
			if (mob.length < 10) {
				alert("Invalid Residence Phone No...Atleast 10 digits you have to supply");
				document.form1.txt_resno.focus();
				return;
			}

			if (document.form1.txt_resno.value > 0) {
				if (isNumber(document.form1.txt_resno.value) == false) {
					alert("Invalid Residence Phone No");
					document.form1.txt_resno.focus();
					return;
				}
			}
		}

		mob = document.form1.txt_offno.value

		for (i = 0; i < mob.length; i++) {
			if ((mob.charAt(i) >= '0' && mob.charAt(i) <= '9')) {
			} else {
				alert("Invalid Office Phone No , Should Enter Only Numbers");
				document.form1.txt_offno.focus();
				return;
			}
		}

		if (mob != "") {
			if (mob.length < 10) {
				alert("Invalid Office Phone No...Atleast 10 digits you have to supply");
				document.form1.txt_offno.focus();
				return;
			}

			if (document.form1.txt_offno.value > 0) {
				if (isNumber(document.form1.txt_offno.value) == false) {
					alert("Invalid Office Phone No");
					document.form1.txt_offno.focus();
					return;
				}
			}
		}

		mob = document.form1.txt_mobile.value

		for (i = 0; i < mob.length; i++) {
			if ((mob.charAt(i) >= '0' && mob.charAt(i) <= '9')) {
			} else {
				alert("Invalid  Mobile No , Should Enter Only Numbers");
				document.form1.txt_mobile.focus();
				return;
			}
		}

		if (mob != "") {
			if (mob.length < 10) {
				alert("Invalid  Mobile No...Atleast 10 digits you have to supply");
				document.form1.txt_mobile.focus();
				return;
			}

			if (document.form1.txt_mobile.value > 0) {
				if (isNumber(document.form1.txt_mobile.value) == false) {
					alert("Invalid Mobile Phone No");
					document.form1.txt_mobile.focus();
					return;
				}
			}
		}

		if (document.form1.year.value == "") {
			alert("Please Enter Year, Should Not Be Blank");
			document.form1.year.focus();
			return;
		}

		if (document.form1.txt_sex.value == "") {
			alert("Please Enter Sex, Should Not Be Blank");
			document.form1.txt_sex.focus();
			return;
		}

		document.form1.submit();
	}
</script>
<link href="../ISSCSS.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>

	<div align="left">
		<p>
			<%
				out.println("Interested  to Join Batch Id  " + bid);
			%>
		</p>
		<p align="center">
			<span class="GreaterThan"> Welcome to OnLine Registration
				Group </span>
		</p>
	</div>
	<FORM action="/OnlineTest/custRegServlet" method="post" id="form1"
		name="form1">

		<table width="53%" border="0" align="center"
			background="../images/bgpatch.jpg" bgcolor="#5350b9">

			<tr>
				<td width="13%" bgcolor="#5350b9">&nbsp;</td>
				<td colspan="2" bgcolor="#5350b9"><div align="center"
						class="text2"></div></td>
				<td width="3%">&nbsp;</td>
			</tr>

			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td width="37%" bgcolor="#5350b9" class="text1"><div
						align="right" class="menuitems">Name:</div></td>
				<td width="47%" bgcolor="#5350b9"><INPUT name="txt_name"
					type="text" id="txt_name"> *</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">Address1:&nbsp;</div></td>
				<td bgcolor="#5350b9"><INPUT type="text" name="txt_add1">
					*</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right">
						<span class="menuitems">Address2</span>:
					</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_add2 name=txt_add2>
					*</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right">
						<span class="menuitems">City:</span>&nbsp;
					</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_city name=txt_city>
					*</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right">
						<span class="menuitems">State</span>:
					</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_state name=txt_state>
					*</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">Country:</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_country name=txt_country>
					*</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">Fax:</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_fax name=txt_fax> *</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">Mail:&nbsp;</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_mail name=txt_mail>
					*</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">Resident No:</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_resno name=txt_resno>
					*</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">Office No:</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_offno name=txt_offno></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">Mobile No:</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_country4 name=txt_mobile></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">D.O.B:&nbsp;</div></td>
				<td bgcolor="#5350b9"><SELECT id=select size=1 name=day>
						<OPTION value=1 selected>1</OPTION>
						<OPTION value=2>2</OPTION>
						<OPTION value=3>3</OPTION>
						<OPTION value=4>4</OPTION>
						<OPTION value=5>5</OPTION>
						<OPTION value=6>6</OPTION>
						<OPTION value=7>7</OPTION>
						<OPTION value=8>8</OPTION>
						<OPTION value=9>9</OPTION>
						<OPTION value=10>10</OPTION>
						<OPTION value=11>11</OPTION>
						<OPTION value=12>12</OPTION>
						<OPTION value=13>13</OPTION>
						<OPTION value=14>14</OPTION>
						<OPTION value=15>15</OPTION>
						<OPTION value=16>16</OPTION>
						<OPTION value=17>17</OPTION>
						<OPTION value=18>18</OPTION>
						<OPTION value=19>19</OPTION>
						<OPTION value=20>20</OPTION>
						<OPTION value=21>21</OPTION>
						<OPTION value=22>22</OPTION>
						<OPTION value=23>23</OPTION>
						<OPTION value=24>24</OPTION>
						<OPTION value=25>25</OPTION>
						<OPTION value=26>26</OPTION>
						<OPTION value=27>27</OPTION>
						<OPTION value=28>28</OPTION>
						<OPTION value=29>29</OPTION>
						<OPTION value=30>30</OPTION>
						<OPTION value=31>31</OPTION>
				</SELECT> <SELECT id=select3 size=1 name=month>
						<OPTION value=january selected>january</OPTION>
						<OPTION value=february>february</OPTION>
						<OPTION value=mar>march</OPTION>
						<OPTION value=april>april</OPTION>
						<OPTION value=may>may</OPTION>
						<OPTION value=june>june</OPTION>
						<OPTION value=july>july</OPTION>
						<OPTION value=august>august</OPTION>
						<OPTION value=september>september</OPTION>
						<OPTION value=october>october</OPTION>
						<OPTION value=november>november</OPTION>
						<OPTION value=december>december</OPTION>
				</SELECT> <INPUT style="WIDTH: 67px; HEIGHT: 22px" size=8 name=year></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9" class="text1"><div align="right"
						class="menuitems">Sex:</div></td>
				<td bgcolor="#5350b9"><INPUT id=txt_country5 name=txt_sex></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9"><div align="right">
						<INPUT id=reset type=reset value=Reset name=reset>
					</div></td>
				<input type="hidden" name="batchid" value="<%=bid%>">
				<td bgcolor="#5350b9"><input type="button" name="Save"
					value="Save" onClick="validate()"></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td height="31" bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td bgcolor="#5350b9">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
		<h3>
			<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
		</h3>
		<P>&nbsp;</P>
	</form>
</BODY>


</HTML>
