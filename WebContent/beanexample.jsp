<%@ page import='beans.*' %>

<%@ page language='java' contentType='text/html; charset=UTF-8'
    pageEncoding='UTF-8'%>
<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<title>Use Bean Example</title>
</head>
<body>
<jsp:useBean id='date'  class='java.util.Date'/>
<jsp:useBean id='person'  class='beans.beanclass'>
   <jsp:setProperty name='person' property='firstName'
                    value='joe'/>
   <jsp:setProperty name='person' property='lastName'
                    value='smith'/>
   <jsp:setProperty name='person' property='age'
                    value='10'/>
</jsp:useBean>

<h2>Simple use of bean calling java.util.Date</h2>
Today is <%=date%>
<h2>Example for Accessing JavaBeans Properties</h2>
<p><b>Person First Name:</b>
   <jsp:getProperty name='person' property='firstName'/>
</p>
<p><b>Person Last Name:</b>
   <jsp:getProperty name='person' property='lastName'/>
</p>
<p><b>Person Age:</b>
   <jsp:getProperty name='person' property='age'/>
</p>
</body>
</html>
