
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
                "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Link href="<c:url value='/resources/css/style.css' />"  rel="stylesheet" type="text/css"-->
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	type="text/javascript">
	
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#datepicker").datepicker();
	});
</script>
<script type="text/javascript">
	strHour = "";
	strMin = "";
	function GetArduinoIO() {
		nocache = "&nocache=" + Math.random() * 1000000;
		var request = new XMLHttpRequest();

		// get the values from the drop-down select boxes
		var sel_hour = document.getElementById("selHour");
		if (sel_hour.selectedIndex > 0) {
			strHour = "&h=" + sel_hour.options[sel_hour.selectedIndex].text;
		} else {
			// the first item in the drop-down box is invalid text, so clear the string
			strHour = "";
		}

		var sel_min = document.getElementById("selMin");
		if (sel_min.selectedIndex > 0) {
			strMin = "&m=" + sel_min.options[sel_min.selectedIndex].text;
		} else {
			strMin = "";
		}

		// send HTTP GET request with LEDs to switch on/off if any
		request.open("GET", "ajax_inputs" + strHour + strMin + nocache, true);
		request.send(null);
		setTimeout('GetArduinoIO()', 3000);
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order Manager Home</title>

<style type="text/css">
BODY {
	SCROLLBAR-FACE-COLOR: #AFACA9;
	SCROLLBAR-HIGHLIGHT-COLOR: #ffffff;
	SCROLLBAR-SHADOW-COLOR: #E2EDC2;
	SCROLLBAR-3DLIGHT-COLOR: #ffffff;
	SCROLLBAR-ARROW-COLOR: #000000;
	SCROLLBAR-TRACK-COLOR: #ffffff;
	SCROLLBAR-DARKSHADOW-COLOR: #ffffff;
	Background-color: #ffffff;
}

em {
	color: red;
	font-weight: bold;
}

.navlink {
	font-family: verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #ffffff;
	line-height: 15px;
	font-weight: bold;
	text-decoration: none;
}

.navlink:hover {
	font-family: verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #000000;
	line-height: 15px;
	font-weight: bold;
	text-decoration: none;
}

.welcome {
	font-family: Arial, verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: white;
	line-height: 16px;
	letter-spacing: 1px;
	font-weight: bold;
}

.txt {
	font-family: verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: white;
	line-height: 14px;
	font-weight: normal;
	text-decoration: none;
}

.txt1 {
	font-family: verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #202932;
	line-height: 12px;
	font-weight: normal;
	text-decoration: none;
	text-align: justify;
}

.input {
	color: #000000;
	font-size: 10px;
	font-family: Verdana;
	background-color: #ffffff;
	border: 1px solid #A70C30;
	width: 80px;
}

header {
	font-size: 9pt;
	font-weight: normal;
	color: blue;
	text-decoration: none;
}

.header:link {
	font-size: 9pt;
	font-weight: normal;
	color: blue;
	text-decoration: none;
}

;
.header:visited {
	font-size: 9pt;
	font-weight: normal;
	color: white;
	text-decoration: none;
}

;
.header:active {
	font-size: 9pt;
	font-weight: normal;
	color: white;
	text-decoration: none;
}

;
.header:hover {
	color: white;
	font-size: 10pt;
	font-weight: bold;
	text-decoration: none;
}

;
.subheader {
	font-size: 9pt;
	font-weight: normal;
	color: Black;
	text-decoration: none;
}

.subheader:link {
	font-size: 9pt;
	font-weight: normal;
	color: Black;
	text-decoration: none;
}

;
.subheader:visited {
	font-size: 9pt;
	font-weight: normal;
	color: Black;
	text-decoration: none;
}

;
.subheader:active {
	font-size: 9pt;
	font-weight: normal;
	color: black;
	text-decoration: none;
}

;
.subheader:hover {
	color: Red;
	font-weight: bold;
	text-decoration: none;
}

;
.heading {
	font-size: 11pt;
	font-weight: bold;
	color: White;
}

.thirdrow {
	background-color: "darkblue"
}

.fourthrow {
	background-color: "#444499"
}

.dashboardTableHeadclr {
	background-color: #0209A0;
}

.dashboardTableBgColor {
	background-color: #020990;
}

.tableHead {
	font-size: 8pt;
	font-style: normal;
	color: Black;
	font-weight: bold;
	text-decoration: none
}

.FolderMenu {
	font-size: 9pt;
	font-weight: bold;
	color: black;
	text-decoration: none;
}

.FolderMenu:link {
	font-size: 9pt;
	font-weight: bold;
	color: Black;
	text-decoration: none;
}

;
.FolderMenu:visited {
	font-size: 9pt;
	font-weight: bold;
	color: Black;
	text-decoration: none;
}

;
.FolderMenu:active {
	font-size: 9pt;
	font-weight: bold;
	color: Black;
	text-decoration: none;
}

;
.FolderMenu:hover {
	color: black;
	font-weight: bold;
	text-decoration: none;
}

h5 {
	left: 1100px;
	color: blue;
	font: normal;
}

UL.navR LI {
	PADDING-LEFT: 0px;
	PADDING-RIGHT: 0px;
	FLOAT: right
}

UL.navR LI A {
	PADDING-BOTTOM: 0px;
	MARGIN: 0px;
	BACKGROUND-COLOR: #e0e0e0;
	PADDING-LEFT: 10px;
	PADDING-RIGHT: 40px;
	DISPLAY: block;
	FONT: bold 11px/30px Verdana, Arial, Helvetica, sans-serif;
	COLOR: #000;
	TEXT-DECORATION: none
}

UL.navR LI A:hover {
	PADDING-BOTTOM: 0px;
	BACKGROUND-COLOR: #0078aa;
	COLOR: #fff
}

.cls_innerTable {
	border-left: 0px solid #000000;
	border-top: 0px solid #000000;
	font-weight: normal;
	color: black;
	font-family: Calibri;
	font-size: 13px;
}

.cls_innerTable td {
	border-top: 0px;
	border-left: 0px;
	border-bottom: 0px solid #000000;
	border-right: 0px solid #000000;
	color: midnightblue;
}

.cls_innerTableB {
	border-left: 0px solid #000000;
	border-right: 0px solid #000000;
	border-top: 0px solid #000000;
	border-bottom: 0px solid #000000;
	font-weight: normal;
	color: black;
	font-family: Calibri;
	font-size: 13px;
}

.cls_innerTableB td {
	border-top: 0px;
	border-left: 0px;
	border-bottom: 0px solid #000000;
	border-right: 0px solid #000000;
	color: blue;
}

.cls_innerTable th {
	border-top: 0px solid #000000;
	border-left: 0px solid #000000;
	border-bottom: 0px solid #000000;
	border-right: 0px solid #000000;
}

.cls_innerTable tr {
	border-top: 0px solid #000000;
	border-left: 0px solid #000000;
	border-bottom: 0px solid #000000;
	border-right: 0px solid #000000;
}

.divfooter {
	position: absolute;
	bottom: 20px;
	left: 35%;
}

.divtable {
	position: absolute;
	top: 30px;
	left: 5%; /* Positions 50% from right (right edge will be at center) */
}

.cls_innerTableT {
	border-left: 0px solid #000000;
	border-top: 0px solid #000000;
	border-right: 0px solid #000000;
	border-bottom: 0px solid #000000;
	font-weight: normal;
	color: black;
	font-family: Calibri;
	font-size: 13px;
}

.cls_innerTableT td {
	border-top: 0px;
	border-left: 0px;
	border-bottom: 0px solid #000000;
	border-right: 0px solid #000000;
	color: midnightblue;
}

.cls_innerTableT tr {
	border-top: 0px solid #000000;
	border-left: 0px solid #000000;
	border-bottom: 1px solid #ffffff;
	border-right: 1px solid #ffffff;
}

.cls_innerTableT th {
	border-top: 0px solid #000000;
	border-left: 0px solid #000000;
	border-bottom: 1px solid #ffffff;
	border-right: 1px solid #ffffff;
	color: midnightblue;
}

.myButton {
	-moz-box-shadow: 3px 4px 0px 0px #1564ad;
	-webkit-box-shadow: 3px 4px 0px 0px #1564ad;
	box-shadow: 3px 4px 0px 0px #1564ad;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff
		), color-stop(1, #378de5));
	background: -moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background: -webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background: -o-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background: -ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background: linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff',
		endColorstr='#378de5', GradientType=0);
	background-color: #79bbff;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #337bc4;
	display: inline-block;
	cursor: pointer;
	color: white;
	font-family: Arial;
	font-size: 12px;
	font-weight: bold;
	padding: 8px 30px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #528ecc;
}

.myButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5
		), color-stop(1, #79bbff));
	background: -moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background: -webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background: -o-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background: -ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background: linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5',
		endColorstr='#79bbff', GradientType=0);
	background-color: #378de5;
}

.myButton:active {
	position: relative;
	top: 1px;
}
</style>
</head>
<body class="bc" leftmargin="0" topmargin="0" rightmargin="0"
	bottommargin="0" onload="GetArduinoIO()">

	<div class="divtable">

		<form:form action="saveOrder" method="post" modelAttribute="order">

			<form:hidden path="id" />
			<table class="cls_innerTable">
				<tr>
					<td></td>
					<td height="15" colspan="4"><font color="red"><B><label
								for="error_status" id="error_status"></label></B></font></td>
				</tr>
				<tr>
					<td width="5%">
						<table class="cls_innerTable" align="center">
							<tr>
								<td></td>
							</tr>
						</table>
					</td>
					<td valign="top" width="25%">
						<table class="cls_innerTable">
							<tr>
								<td colspan="2"><H2>Location Information</H2></td>
							</tr>
							<tr>
								<td height="30">Pickup City:<em>*</em></td>
								<td><form:select id="pickupcity" style="height:1.9em;"
										size="1" path="pickupcity">
										<form:option item="Bangalore" value="Bangalore" />
										<form:option item="Chennai" value="Chennai" />
										<form:option item="Coimbatore" value="Coimbatore" />
										<form:option item="Cuddalore" value="Cuddalore" />
										<form:option item="Hosur" value="Hosur" />
										<form:option item="Kanchipuram" value="Kanchipuram" />
										<form:option item="krishnagiri" value="krishnagiri" />
										<form:option item="Kumbakonam" value="Kumbakonam" />
										<form:option item="Madurai" value="Madurai" />
										<form:option item="Pondicherry" value="Pondicherry" />
										<form:option item="Thanjavur" value="Thanjavur" />
										<form:option item="Trichy" value="Trichy" />
										<form:option item="Vellore" value="Vellore" />


									</form:select></td>
							</tr>
							<tr>
								<td height="30">Drop City:<em>*</em></td>
								<td><form:select id="dropcity" style="height:1.9em;"
										size="1" path="dropcity">
										<form:option item="Chennai" value="Chennai" />
										<form:option item="Bangalore" value="Bangalore" />
										<form:option item="Coimbatore" value="Coimbatore" />
										<form:option item="Cuddalore" value="Cuddalore" />
										<form:option item="Hosur" value="Hosur" />
										<form:option item="Kanchipuram" value="Kanchipuram" />
										<form:option item="krishnagiri" value="krishnagiri" />
										<form:option item="Kumbakonam" value="Kumbakonam" />
										<form:option item="Madurai" value="Madurai" />
										<form:option item="Pondicherry" value="Pondicherry" />
										<form:option item="Thanjavur" value="Thanjavur" />
										<form:option item="Trichy" value="Trichy" />
										<form:option item="Vellore" value="Vellore" />


									</form:select></td>
							</tr>

							<tr>
								<td height="30">Pickup Date:<em>*</em></td>
								<td><form:input path="datevalue" size="10" type="text"
										id="datepicker" /></td>
							</tr>

							<tr>
								<td height="30">Pickup Time:<em>*</em>
								</td>
								<td><form:select style="height:1.9em;" size="1"
										path="hourvalue" id="selHour">
												<form:option selected="selected" item="hr" value="hr"/>
												<form:option item="00" value="00" />
												<form:option item="01" value="01" />
												<form:option item="02" value="02" />
												<form:option item="03" value="03" />
												<form:option item="04" value="04" />
												<form:option item="05" value="05" />
												<form:option item="06" value="06" />
												<form:option item="07" value="07" />
												<form:option item="08" value="08" />
												<form:option item="09" value="09" />
												<form:option item="10" value="10" />
												<form:option item="11" value="11" />
												<form:option item="12" value="12" />
												<form:option item="13" value="13" />
												<form:option item="14" value="14" />
												<form:option item="15" value="15" />
												<form:option item="16" value="16" />
												<form:option item="17" value="17" />
												<form:option item="18" value="18" />
												<form:option item="19" value="19" />
												<form:option item="20" value="20" />
												<form:option item="21" value="21" />
												<form:option item="22" value="22" />
												<form:option item="23" value="23" />
											</form:select> : 
											<form:select style="height:1.9em;" size="1"
										path="minutevalue" id="selMin">
												<form:option selected="selected" item="min" value="min" />
												<form:option item="00" value="00" />
												<form:option item="01" value="01" />
												<form:option item="02" value="02" />
												<form:option item="03" value="03" />
												<form:option item="04" value="04" />
												<form:option item="05" value="05" />
												<form:option item="06" value="06" />
												<form:option item="07" value="07" />
												<form:option item="08" value="08" />
												<form:option item="09" value="09" />
												<form:option item="10" value="10" />
												<form:option item="11" value="11" />
												<form:option item="12" value="12" />
												<form:option item="13" value="13" />
												<form:option item="14" value="14" />
												<form:option item="15" value="15" />
												<form:option item="16" value="16" />
												<form:option item="17" value="17" />
												<form:option item="18" value="18" />
												<form:option item="19" value="19" />
												<form:option item="20" value="20" />
												<form:option item="21" value="21" />
												<form:option item="22" value="22" />
												<form:option item="23" value="23" />
												<form:option item="24" value="24" />
												<form:option item="25" value="25" />
												<form:option item="26" value="26" />
												<form:option item="27" value="27" />
												<form:option item="28" value="28" />
												<form:option item="29" value="29" />
												<form:option item="30" value="30" />
												<form:option item="31" value="31" />
												<form:option item="32" value="32" />
												<form:option item="33" value="33" />
												<form:option item="34" value="34" />
												<form:option item="35" value="35" />
												<form:option item="36" value="36" />
												<form:option item="37" value="37" />
												<form:option item="38" value="38" />
												<form:option item="39" value="39" />
												<form:option item="40" value="40" />
												<form:option item="41" value="41" />
												<form:option item="42" value="42" />
												<form:option item="43" value="43" />
												<form:option item="44" value="44" />
												<form:option item="45" value="45" />
												<form:option item="46" value="46" />
												<form:option item="47" value="47" />
												<form:option item="48" value="48" />
												<form:option item="49" value="49" />
												<form:option item="50" value="50" />
												<form:option item="51" value="51" />
												<form:option item="52" value="52" />
												<form:option item="53" value="53" />
												<form:option item="54" value="54" />
												<form:option item="55" value="55" />
												<form:option item="56" value="56" />
												<form:option item="57" value="57" />
												<form:option item="58" value="58" />
												<form:option item="59" value="59" />

											</form:select></td>

							</tr>

						</table>
					</td>
					<td width="5%">
						<table class="cls_innerTable" align="center">
							<tr>
								<td></td>
							</tr>

						</table>
					</td>
					<td valign="top" width="25%">
						<table class="cls_innerTable" align="center">
							<tr>
								<td colspan="2"><font color="midnightblue"><H2>Address
											Information</H2> (Version 1.0) </font></td>

							</tr>
							<tr>
								<td height="25">Name:<em>*</em></td>
								<td><form:input path="name" /></td>
							</tr>
							<tr>
								<td height="25">Email:<em>*</em></td>
								<td><form:input path="email" /></td>
							</tr>
							<tr>
								<td height="25">Street:<em>*</em></td>
								<td><form:input path="street" /></td>
							</tr>
							<tr>
								<td height="25">City:<em>*</em></td>
								<td><form:input path="city" /></td>
							</tr>
							<tr>
								<td height="25">Zip:<em>*</em></td>
								<td><form:input path="zip" /></td>
							</tr>
							<tr>
								<td height="25">State:</td>
								<td><form:input path="ustd" /></td>
							</tr>
							<tr>
								<td height="25">Telephone:<em>*</em></td>
								<td><form:input path="telephone" /></td>
							</tr>
						</table>
					</td>
					<td width="5%">
						<table class="cls_innerTable" align="center">
							<tr>
								<td></td>
							</tr>
						</table>
					</td>
					<td valign="top" width="35%">
						<table class="cls_innerTable" align="center">
							<tr>
								<td colspan="2"><H2>Price Information</H2></td>
							</tr>
							<tr>
								<td height="30" width="90">Vehicle Type:<em>*</em></td>
								<td><form:select id="vehicletype" style="height:1.9em;"
										size="1" path="vehicletype">
										<form:option item="Hatchback" value="Hatchback" />
										<form:option item="Sedan" value="Sedan" />
										<form:option item="MUV" value="MUV" />
									</form:select></td>
							</tr>
							<tr>
								<td colspan="2" height="5"></td>
							</tr>
							<tr>
								<td colspan="2">
									<table class="cls_innerTableT" align="center">
										<tr height="40" bgcolor="#8DB3E2">
											<th style="text-align: center;"><B>VEHICLE<BR>TYPE
											</B></th>
											<th style="text-align: center;"><B>Rate <BR>/
													Km
											</B></th>
										</tr>

										<tr height="30" align="left">
											<td width="170">Hatchback<BR>(Indica)
											</td>
											<td width="100" align="center">Rs. 10.00 /km</td>

										</tr>

										<tr height="30" align="left">
											<td>Sedan <BR>(Indigo / Etios / Dzire)
											</td>
											<td align="center">Rs. 11.00 /km</td>

										</tr>

										<tr height="30" align="left">
											<td>MUV <BR>(Innova / Xylo)
											</td>
											<td align="center">Rs. 14.00 /km</td>
										</tr>
									</table>
								</td>
							<tr>
								<td colspan="2" height="5"></td>
							</tr>
							<tr>
								<td colspan="2"><em>*</em> Pay by<B> Cash </B>To Driver</td>
							</tr>
						</table>

					</td>
				</tr>
				<tr valign="middle">
					<td colspan="6" height="25" align="center">
					<!-- 
					<input type="checkbox" id="Terms"/> I agree to					
					<a href="welcome" 
					onclick="window.open('https://google.com', 'newwindow', 'top=150, left=400, width=600, height=450'); return false;" >
					Terms & Conditions
					</a>.
					 -->
					</td>
				</tr>

				<tr>
					<td colspan="6" align="center"><input class="myButton"
						type="submit" id="buttonname" value="Book Now"
						onclick="return submit_click();"></td>
				</tr>

			</table>

		</form:form>
	</div>
	<script language="javascript" type="text/javascript">
		function submit_click() {
			
			if (document.getElementById("datepicker").value == "") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Select Travel Date !";
				return false;
			}
			if (document.getElementById("selHour").value == "hr") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Select Travel Time - Hour !";
				return false;
			}
			if (document.getElementById("selMin").value == "min") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Select Travel Time - Minute !";
				return false;
			}			
			if (document.getElementById("name").value == "") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Enter Name !";
				return false;
			}
			if (document.getElementById("email").value == "") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Enter Email !";
				return false;
			}
			if (document.getElementById("street").value == "") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Enter Street !";
				return false;
			}
			if (document.getElementById("city").value == "") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Enter City !";
				return false;
			}
			if (document.getElementById("zip").value == "") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Enter Zip !";
				return false;
			}
			if (document.getElementById("telephone").value == "") {
				document.getElementById("error_status").textContent = "Error: "
						+ "Enter Mobile !";
				return false;
			}
		}
	</script>

</body>


</html>
