<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*, java.sql.*"%>

<%
String firstNameError = "";
String lastNameError = "";
String emailError = "";
String passwordError = "";
String cpasswordError = "";

if("email" != "" && "firstname" != "" && "lastname" != ""  && "password" != ""){
	session.putValue("Error",emailError); 
}

String email=request.getParameter("email"); 
session.putValue("email",email); 
String pwd=request.getParameter("password"); 
session.putValue("password",pwd); 
String fname=request.getParameter("firstname");
session.putValue("firstname",fname); 
String lname=request.getParameter("lastname"); 
session.putValue("lastname",lname); 
//String email=request.getParameter("email"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phpcrudsample",
"root","swordfish"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into tb_user (email, password,firstname,lastname) values ('"+email+"','"+pwd+"','"+fname+"','"+lname+"')");
response.sendRedirect("registerthankyou.html");

%>