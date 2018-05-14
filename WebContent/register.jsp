<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">	
	<title>Register with us!</title>
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
	<link href="CSS/registerStyle.css" type="text/css" rel="stylesheet"/>
</head>

<body>
<div id="bodycontainer" class="container-fluid">
		<div class="center">
			<div id="fill" class="row"></div>
			<div id="homeheading" class="row row-centered">
				<div class="col-lg-12 text-center">
					<h1><br>Welcome to ABC!</h1>
					<a href="https://www.facebook.com/"><img class="link" src="images/facebook.png" width="436" height="44" /></a><br>
					<a href="https://accounts.google.com/ServiceLogin/signinchooser?elo=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><img class="link" src="images/gmail.png" width="436" height="44" /></a><br>
					<img class="link" src="images/or.png" width="436" height="44" />
				</div>
			</div>
		</div>

		<div class="center">
			<div id="homeheading" class="row row-centered">
				<div class="col-lg-12 text-center">
					<form name="register" method="post" action="registerhandler.jsp">	
							<input class="textbox" type="text" placeholder="First Name*" name="firstname"> 
							<br><br>
							<input class="textbox" type="text" placeholder="Last Name*" name="lastname">
							<br><br>
							<input class="textbox" type="text" placeholder="Email*" name="email"> 
							<br><span style="color:white;"><b><%-- <% out.print("Please provide an email address"); %> --%></b></span><br>
							<input class="textbox" type="password" placeholder="Password*" name="password"> 
							<br><br>
							<input class="textbox" type="password" placeholder="Confirm Password*" name="cpwd">
							
							<input type="hidden" name="submitted" value="1">
							<input type="submit" name="submit" value="Join ABC" class="myButton"><br/>
							<a href="index.html"; style="color:white">Back to login screen</a>
					</form>
				</div>
				
			</div>
		</div>
	</div>
</body>

</html>