<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple JSP Application</title>
</head>
<body>
    <h1>Simple JSP Application</h1>
    <form action="index.jsp" method="post">
        <label for="userInput">Enter text:</label>
        <input type="text" id="userInput" name="userInput" required />
        <button type="submit">Submit</button>
    </form>

    <% 
        String userInput = request.getParameter("userInput");
        if (userInput != null) {
    %>
        <h2>You entered: <%= userInput %></h2>
    <% 
        }
    %>
</body>
</html>
