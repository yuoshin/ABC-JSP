<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>

<body>
<% %>

	<%!
	String userdbEmail;
	String userdbPsw;
	String userdbFirstName;
	String userdbLastName;
	int userdbis_admin;
	int userdbis_block;
	String userdbprofile_pic;
	String userdbprofile;
	String emailError="";
	String passwordError="";
	%>

	<%
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/phpcrudsample";
		String user = "root";
		String dbpsw = "swordfish";
		String sql = "select * from tb_user where email=? and password=?";

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if ((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))))
		{
			try {
				Class.forName(driverName);
				con = DriverManager.getConnection(url, user, dbpsw);
				ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);

				rs = ps.executeQuery();

				if (rs.next()){
					userdbEmail = rs.getString("email");
					userdbPsw = rs.getString("password");
					userdbFirstName = rs.getString("firstname");
					userdbLastName = rs.getString("lastname");
					userdbis_admin = rs.getInt("is_admin");
					userdbis_block = rs.getInt("is_block");
					userdbprofile_pic = rs.getString("profile_pic");
					userdbprofile = rs.getString("profile");

					if (email.equals(userdbEmail) && password.equals(userdbPsw))
					{
						session.setAttribute("email", userdbEmail);
						session.setAttribute("password", userdbPsw);
						session.setAttribute("firstname", userdbFirstName);
						session.setAttribute("lastname", userdbLastName);
						session.setAttribute("is_admin", userdbis_admin);
						session.setAttribute("is_block", userdbis_block);
						session.setAttribute("profile_pic", userdbprofile_pic);
						session.setAttribute("profile", userdbprofile);
						response.sendRedirect("user/home.jsp");
					}
				}
				else
					/* response.sendRedirect("error.jsp");
				rs.close();
				ps.close(); */
				emailError = "Email error";
				passwordError = "Password error";
				
			}
			catch (SQLException sqe){
				out.println(sqe);
			}
		}
		else
		{
	%>
	<center>
		<p style="color: red">Error In Login</p>
	</center>
	<%
		getServletContext().getRequestDispatcher("/home.jsp").include(request, response);
		}
	%>
</body>
</html>