<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<!-- Link href="<c:url value='/resources/css/style.css' />"  rel="stylesheet" type="text/css"-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact Manager Home</title>

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

td {
	font-family: verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #000000;
	font-weight: normal;
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
	border-left: 1px solid #000000;
	border-top: 1px solid #000000;
	border-right: 1px solid #000000;
	border-bottom: 1px solid #000000;
	font-weight: normal;
	color: black;
	font-family: Calibri;
	font-size: 13px;
}

.cls_innerTable td {
	border-top: 1px;
	border-left: 1px;
	border-bottom: 1px solid #000000;
	border-right: 1px solid #000000;
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
	border-bottom: 1px solid #000000;
	border-right: 1px solid #000000;
}

.cls_innerTable th {
	border-top: 0px solid #000000;
	border-left: 0px solid #000000;
	border-bottom: 1px solid #000000;
	border-right: 1px solid #000000;
	color: midnightblue;
}

.cls_innerTable tr {
	border-top: 1px solid #000000;
	border-left: 1px solid #000000;
	border-bottom: 1px solid #000000;
	border-right: 1px solid #000000;
}

.divfooter {
    position:absolute;
    bottom:20px;
    left:35%;
    
}

.divtable {
    position:absolute;
    top:50px;
    left:5%; /* Positions 50% from right (right edge will be at center) */
    
}
</style>
</head>
<body class="bc" leftmargin="0" topmargin="0" rightmargin="0"
	bottommargin="0">
	
    <div class="divtable">
    <H3><font face="Verdana" color="midnightblue">List of Products</font></H3>
	<table width="40%" class="cls_innerTable" cellspacing="0"
		cellpadding="0">		
		<tr height="40" bgcolor="#8DB3E2">
			<th width=10% style="text-align: center;"><B>Product<BR>Name</B></th>
			<th width=15% style="text-align: center;"><B>Price</B></th>
			<th width=10% style="text-align: center;"><B>Discount<BR>%</B></th>
			
		</tr>		
			
		<tr height="30" align="center">
			<td>MyMoney</td>
			<td align="center">$100</td>
			<td align="center">8%</td>			
		</tr>

		<tr height="30" align="center">
			<td>FamilyAlbum</td>
			<td align="center">$80</td>
			<td align="center">15%</td>
		</tr>

		<tr height="30" align="center">
			<td>ScreenSaver</td>
			<td align="center">$20</td>
			<td align="center">10%</td>
		</tr>	
	</table>
	</div>


	
</body>
</html>
