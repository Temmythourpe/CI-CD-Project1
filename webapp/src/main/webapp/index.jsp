<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Application Registration</title>
</head>
<body>
    <h2>Job Application Form</h2>

    <form method="post">
        Full Name: <input type="text" name="fullName" required><br><br>
        Email: <input type="email" name="email" required><br><br>
        Phone: <input type="tel" name="phone"><br><br>
        Position Applied For: <input type="text" name="position"><br><br>
        Resume Summary: <br>
        <textarea name="summary" rows="5" cols="50"></textarea><br><br>
        <input type="submit" value="Submit Application">
    </form>

    <%
        String fullName = request.getParameter("fullName");
        if (fullName != null && !fullName.isEmpty()) {
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String position = request.getParameter("position");
            String summary = request.getParameter("summary");
    %>
        <h3>Application Received</h3>
        <p><strong>Name:</strong> <%= fullName %></p>
        <p><strong>Email:</strong> <%= email %></p>
        <p><strong>Phone:</strong> <%= phone %></p>
        <p><strong>Position:</strong> <%= position %></p>
        <p><strong>Summary:</strong><br><%= summary %></p>
    <%
        }
    %>
</body>
</html>