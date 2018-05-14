<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>Update Profile Operation</title>
    </head>
    <body>
        <c:if test="${ empty param.firstName or empty param.lastName or empty param.passWord or empty param.eMail}">
            <c:redirect url="updateprofile.jsp" >
                <c:param name="errMsg" value="Please do not leave the fields blank!" />
            </c:redirect>
        </c:if>
        
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/phpcrudsample"
                           user="root"  password="swordfish"/>
 		
        <sql:update dataSource="${dbsource}" var="result">
            UPDATE tb_user SET password=?, firstname=?, lastname=? WHERE email=?;
            <sql:param value="${param.passWord}" />
            <sql:param value="${param.firstName}" />
            <sql:param value="${param.lastName}" />
            <sql:param value="${param.eMail}" />
        </sql:update>
        
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations! Data inserted
            successfully.</font>
            <c:redirect url="updateprofile.jsp" >
                <c:param name="susMsg" value="Profile updated successfully! Logout and log back in for the changes to take effect." />
            </c:redirect>
        </c:if> 
 
    </body>
</html>