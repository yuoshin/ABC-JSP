<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*, java.sql.*"%>

<%-- <%

//Get session email
String email = (String)session.getAttribute("email");

//Connect to db
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phpcrudsample",
"root","swordfish"); 
Statement st= con.createStatement(); 
ResultSet rs; 

//get values of the fields to be updated and place them into the session values
String password=request.getParameter("password"); 
session.putValue("password",password); 
String firstname=request.getParameter("firstname");
session.putValue("firstname",firstname); 
String lastname =request.getParameter("lastname"); 
session.putValue("lastname",lastname); 

//update database with new values
int i=st.executeUpdate("UPDATE tb_user SET password = '"+password+"', firstname = '"+firstname+"', lastname = '"+lastname+"' WHERE email = '"+email+"'");
response.sendRedirect("home.jsp");

%> --%>


<%!
	String userdbPsw;
	String userdbFirstName;
	String userdbLastName;
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
		
		String sql = "update tb_user set password=?, firstname=?, lastname=? WHERE email=?";
		
		String email = (String)session.getAttribute("email");	//get session email
		//String email = request.getParameter("email");
		String password = request.getParameter("password");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");

		if (!(password.equals(null) || password.equals("")) && !(firstname.equals(null) || firstname.equals("")) && !(lastname.equals(null) || lastname.equals("")))
		/* if(true) */
		{
			try {
				Class.forName(driverName);
				con = DriverManager.getConnection(url, user, dbpsw);
				ps = con.prepareStatement(sql);
				ps.setString(1, password);
				ps.setString(2, firstname);
				ps.setString(3, lastname);
				//ps.setString(4, email);				

				/*executeUpdate() returns an int representing the number of rows changed, you don't get a ResultSet. Updates affect rows, they aren't for selection.
				ResultSets are returned from executeQuery(), because a query should contain results from a specific SELECT statement.*/
				
				//rs = ps.executeQuery(); 
				rs = ps.executeUpdate();	//or should use this?
				//int updateNumber = ps.executeUpdate (condition);

				if (rs.next()){
					//userdbEmail = (String)session.getAttribute("email");
					userdbPsw = rs.getString("password");
					userdbFirstName = rs.getString("firstname");
					userdbLastName = rs.getString("lastname");

					/* if (email.equals(email)) */
					if(true)
					{
						//session.setAttribute("email", userdbEmail);
						session.setAttribute("password", userdbPsw);
						session.setAttribute("firstname", userdbFirstName);
						session.setAttribute("lastname", userdbLastName);
						response.sendRedirect("home.jsp");
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