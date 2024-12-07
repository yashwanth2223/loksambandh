<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
        /* General styles for body and layout */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: #f8d7da;
            color: #721c24;
        }

        /* Content container */
        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
        }

        .error-box {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-left: 6px solid #f5c6cb;
        }

        .error-box h1 {
            font-size: 24px;
            color: #721c24;
            margin-bottom: 15px;
        }

        .error-box p {
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 20px;
        }

        .error-box a {
            display: inline-block;
            text-decoration: none;
            background-color: #f5c6cb;
            color: #721c24;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .error-box a:hover {
            background-color: #f1b0b7;
        }

        /* Footer styling */
        footer {
            background-color: #343a40;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 14px;
        }

        footer a {
            color: #f8d7da;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Main Content -->
    <div class="content">
        <div class="error-box">
            <h1>Error Occurred</h1>
            <p><c:out value="${message}"></c:out></p>
            <a href="citproblems.jsp">Back</a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 All Rights Reserved by <a href="#">Your Application</a>.
    </footer>
</body>
</html>
