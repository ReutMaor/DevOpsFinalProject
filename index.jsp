<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple JSP Application</title>
</head>
<body>
    <!-- Simple JSP Page with Input Text Box and Button -->
    <h1>Simple JSP Application</h1>
    <form action="process.jsp" method="post">
        <label for="userInput">Enter text:</label>
        <input type="text" id="userInput" name="userInput" required />
        <button type="submit">Submit</button>
    </form>

    <!-- XML Configuration (Example for illustrative purposes) -->
    <!--
    <web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee" version="3.1">
        <servlet>
            <servlet-name>ProcessServlet</servlet-name>
            <jsp-file>/process.jsp</jsp-file>
        </servlet>
        <servlet-mapping>
            <servlet-name>ProcessServlet</servlet-name>
            <url-pattern>/process.jsp</url-pattern>
        </servlet-mapping>
    </web-app>
    -->
</body>
</html>

<!-- JSP logic to handle form submission (process.jsp) -->
<%
    String userInput = request.getParameter("userInput");
    if (userInput != null) {
        out.println("<h2>You entered: " + userInput + "</h2>");
    }
%>