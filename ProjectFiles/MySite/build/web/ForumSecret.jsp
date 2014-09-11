<%-- 
    Document   : Login
    Created on : 01-Dec-2013, 22:21:05
    Author     : Jamie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    // Does the session indicate this user already logged in?
    Object done = session.getAttribute("logon.isDone");  // marker object
    if (done == null) {
      // No logon.isDone means she hasn't logged in.
      // Save the request URL as the true target and redirect to the login page.
      session.setAttribute("login.target", request.getRequestURI().toString());
      response.sendRedirect(request.getContextPath() + "/login.html");
      return;
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p align="right"><%= done%> (<a href="Logout">logout</a>)</p>
        <h1>JSP Page</h1>
        <p>This is a protected JSP page.</p>
        <p>You can also see the <a href="ForumServlet">protected servlet</a>.</p>
        <p align="right"><a href="<%= request.getContextPath() + "/"%>">home</p>
    </body>
</html>