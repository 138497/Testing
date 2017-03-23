<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/resources/images/Taxi4U.ico' />" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Taxi 4 U</title>
</head>

<frameset rows="150,*,60" framespacing="0" frameborder="NO" border="0">
	<frame src="mainHeader" scrolling="No" name="TopFrame">
	<frame src="welcome" scrolling="yes" name="MiddleFrame" noresize>
	<frame src="mainFooter" scrolling="No" name="BottomFrame">
</frameset>

</html>
