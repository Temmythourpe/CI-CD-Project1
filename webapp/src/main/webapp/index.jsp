<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Application Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            margin: 0;
            padding: 0;
        }
        .container {
            width: 600px;
            margin: 50px auto;
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 1em;
        }
        input[type="submit"] {
            background-color: #007acc;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #005a99;
        }
        .confirmation {
            margin-top: 30px;
            background-color: #f1f9f9;
            padding: 20px;
            border-left: 5px solid #4caf50;
            border-radius: 6px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Job Application Registration</h2>
        <form method="post" enctype="multipart/form-data">
            <label for="fullName">Full Name:</label>
            <input type="text" name="fullName" required>

            <label for="email">Email:</label>
            <input type="email" name="email" required>

            <label for="phone">Phone:</label>
            <input type="tel" name="phone">

            <label for="position">Position Applied For:</label>
            <input type="text" name="position">

            <label for="summary">Resume Summary:</label>
            <textarea name="summary" rows="5"></textarea>

            <label for="cv">Upload CV (PDF/DOC/DOCX):</label>
            <input type="file" name="cv" accept=".pdf,.doc,.docx" required>

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
        <div class="confirmation">
            <h3>Application Submitted Successfully</h3>
            <p><strong>Name:</strong> <%= fullName %></p>
            <p><strong>Email:</strong> <%= email %></p>
            <p><strong>Phone:</strong> <%= phone %></p>
            <p><strong>Position:</strong> <%= position %></p>
            <p><strong>Summary:</strong> <%= summary %></p>
            <p><strong>CV Uploaded:</strong> (CV uploaded successfully — handling not yet implemented)</p>
        </div>
        <%
            }
        %>
    </div>
</body>
</html>