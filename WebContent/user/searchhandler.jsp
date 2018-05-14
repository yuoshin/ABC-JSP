<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>Search Users Operation</title>
</head>

<body style="background-image: url(../images/homeBackground.png); background-repeat: no-repeat; background-position: center; background-size: cover; height: 675px;">
	<jsp:include page="../includes/header.jsp" />
	<c:if test="${ empty param.query}">
		<c:redirect url="search.jsp">
			<c:param name="errMsg" value="Please enter a value to search!" />
		</c:redirect>
	</c:if>

	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/phpcrudsample" user="root"
		password="swordfish" />

	<sql:query dataSource="${dbsource}" var="result">
            SELECT firstname,lastname,email FROM tb_user WHERE firstname = ?;  
            <sql:param value="${param.query}" />
	</sql:query>

	<div class="container-fluid">
		<div class="center">
			<div id="fill" class="row"></div>
			<div id="homeheading" class="row row-centered">
				<div class="col-xl-12 text-center">
					<div class="col-xl-12 text-center">
						<h1>Search Results</h1>
					</div>
				</div>
			</div>

			<div class="center">
				<div class="row">
					<div id="registerbutton" class="col-xl-12 text-center">
						<table border="1"  align="center">
							<c:forEach var="row" items="${result.rows}">
								<tr>
									<td><input type="text" value="${row.firstname}" /></td>
									<td><input type="text" value="${row.lastname}" /></td>
									<td><input type="text" value="${row.email}" /></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>