<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Profile</title>
<!--BootstrapCSS-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	<!--Bootstrap-->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>	
	<!--CSS-->
	<link href="../CSS/loginStyle.css" type="text/css" rel="stylesheet"/>

</head>
<body style= "background-image: url(../images/loginBackground.png);">
<!--TOP MENU-->
<div class="container-fluid">
	<div class="row" style="background-color: rgba(0, 51, 102, 1); height: 60px">
		<div class="col-xl-8">
			<!-- Logo -->
			<img src="../images/logo.png" style="width: 40px; height: 70px; padding: 0px; border: 0px; margin: 0px">
		</div>

		<div class="col-xl-4">			
			<%
				int is_admin = (int)session.getAttribute("is_admin");
				if(is_admin == 1)
				{	
			%>
			<br /> 
			<a href="../user/home.jsp" style="color: white">Home</a> &nbsp; 
			<a href="../user/updateprofile.jsp" style="color: white">Update Profile</a> &nbsp; 
			<a href="/phpcrudsample/public/modules/user/viewjobs.php" style="color: white">View Jobs</a> &nbsp; 
			<a href="../user/search.jsp" style="color: white">Search users</a> &nbsp; 
			<a href="logout.jsp" style="color: white">Logout</a> &nbsp;
			<%
				}else{
			%>
			<br /> 
			<a href="../user/home.jsp" style="color: white">Home</a> &nbsp; 
			<a href="../user/updateprofile.jsp" style="color: white">Update Profile</a> &nbsp; 
			<a href="/phpcrudsample/public/modules/user/viewjobs.php" style="color: white">View Jobs</a> &nbsp; 
			<a href="../user/search.jsp" style="color: white">Search users</a> &nbsp;
			<a href="logout.jsp" style="color: white">Logout</a> &nbsp;
			<%}%>
		</div>
	</div>
</div>

	<form name="updateprofile" method="post" action="updateprofilehandler.jsp">
		<div align=center>
			<h1>Update Profile</h1>
		</div>
		<div>
			<?=$formerror?>
		</div>
		<div align=center>
			<table border='1' width="800">
				<tr>
					<td
						style='color: white; font-size: 18px; background-color: rgba(0, 0, 0, 0.5);'>First
						Name</td>
					<td><input type="text" name="firstName"
						value="<%String firstname = (String)session.getAttribute("firstname"); out.print(firstname);%>" size="50"></td>
				</tr>
				<tr>
					<td
						style='color: white; font-size: 18px; background-color: rgba(0, 0, 0, 0.5); width: 600px; margin: auto'>Last
						Name</td>
					<td><input type="text" name="lastName" value="<%String lastname = (String)session.getAttribute("lastname"); out.print(lastname);%>"
						size="50"></td>
				</tr>
				<tr>
					<td
						style='color: white; font-size: 18px; background-color: rgba(0, 0, 0, 0.5); width: 600px; margin: auto'>Email</td>
					<td><input type="text" name="eMail" value="<%String email = (String)session.getAttribute("email"); out.print(email);%>"
						size="50"></td>
				</tr>
				<tr>
					<td
						style='color: white; font-size: 18px; background-color: rgba(0, 0, 0, 0.5); width: 600px; margin: auto'>Password</td>
					<td><input type="password" name="passWord"
						value="<%String password = (String)session.getAttribute("password"); out.print(password);%>" size="20"></td>
				</tr>
				<tr>
					<td
						style='color: white; font-size: 18px; background-color: rgba(0, 0, 0, 0.5); width: 600px; margin: auto'>Confirm
						Password</td>
					<td><input type="password" name="cpassword"
						value="<%out.print(password);%>" size="20"></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
					<input type="hidden" name="submitted" value="1">
					<input type="submit" name="submit" value="Submit">
					<input type="reset" name="clear" value="Clear Search" onClick="javascript:clearForm();"></td>
					
				</tr>
			</table>
		</div>
	</form>
	<p style="text-align:center; color:red"><b><c:if test="${not empty param.errMsg}">
           	<c:out value="${param.errMsg}" />
           	<a href="home.jsp">Home</a>
       	</c:if></b></font>
       				 
     <p style="text-align:center; color:white"><b><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" /><br/>
            <a href="home.jsp">Home</a>&emsp;
            <a href="logout.jsp">Logout</a>
        </c:if></b></p>
	
</body>
</html>


