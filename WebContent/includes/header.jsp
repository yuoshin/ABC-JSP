<html>
<head>
	<title>Profile</title>
	<!--Required Meta tags-->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<!--BootstrapCSS-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	
	<!--Bootstrap-->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	
	<!--CSS-->
	<link href="../CSS/headerBgStyle.css" type="text/css" rel="stylesheet"/>
</head>

<body>
<%@ page import = "java.io.*,java.util.*,java.sql.*, javax.sql.*" %>

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

<div id="bodycontainer" class="container-fluid">
	<br/><br/>

	<!--PROFILE PIC AND NAME-->
	<div class="row">
		<div class="col-xl-1 offset-xl-1">
		<%
			String profile_pic = (String)session.getAttribute("profile_pic");
		%>
		
			<img src="<% out.print(profile_pic);%>" height="120px" width="120px">
		</div>
		<div class="col-xl-10">
				<h1>
					<% 
						String firstname = (String)session.getAttribute("firstname");
						String lastname = (String)session.getAttribute("lastname");
						out.print(firstname + " " + lastname);
					%>
				</h1>
			</div>
	</div>


</body>
</html>