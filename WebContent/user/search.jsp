<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body
	style="background-image: url(../images/homeBackground.png); background-repeat: no-repeat; background-position: center; background-size: cover; height: 675px;">
	<jsp:include page="../includes/header.jsp" />
	<div align="center">
		<h2 style="color: white">Search Users</h2>
		<form action="searchhandler.jsp" method="post">
			<input type="text" name="query" style="width: 300px"> <input
				type="submit" value="Search">
		</form>
	</div>
</body>
</html>