<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Citizen cit = (Citizen) session.getAttribute("Citizen"); // Use the correct attribute name from the controller
%>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Citizen Home</title>
    <style>
        /* Reset some default browser settings */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #000000;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Ensure the body covers the full viewport height */
        }

        .main-content {
            flex: 1; /* Allow the main content to take up all available space */
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #343a40;
        }

        .welcome-message {
            color: black;
            text-align: center;
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        .error-message {
            color: red;
            text-align: center;
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            color: #007BFF;
        }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #007BFF;
            color: white;
        }

        @media (max-width: 600px) {
            .container {
                flex-direction: column;
                align-items: center;
                gap: 10px;
                margin-top: 10px;
            }

            .card {
                width: 90%;
                padding: 15px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }

            footer {
                font-size: 14px;
            }

            h1 {
                font-size: 24px;
            }

            .welcome-message,
            .error-message {
                font-size: 16px;
            }

            h3 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>
    <%@include file="citnavbar.jsp" %>

    <div class="main-content">
        <% if (cit != null) 
        { 
        %>
            <p class="welcome-message">Welcome <%= cit.getName() %></p>
        <% } else { %>
            <p class="error-message">Session expired. Please log in again.</p>
        <% } %>

        <h1>Roles of a Citizen</h1>

        <div class="container">
            <div class="card">
                <h3>Participate in Elections</h3>
                <p>Every citizen has the right to vote and should participate in elections to choose their representatives.</p>
            </div>

            <div class="card">
                <h3>Stay Informed</h3>
                <p>Keep yourself updated about local and national issues to make informed decisions and contributions.</p>
            </div>

            <div class="card">
                <h3>Community Engagement</h3>
                <p>Get involved in community service and local initiatives to improve your neighborhood.</p>
            </div>

            <div class="card">
                <h3>Report Issues</h3>
                <p>If you encounter problems in your community, report them to the appropriate authorities or through this platform.</p>
            </div>

            <div class="card">
                <h3>Advocate for Change</h3>
                <p>Speak up about issues that matter to you and advocate for positive changes in your community.</p>
            </div>

            <div class="card">
                <h3>Respect Laws and Rights</h3>
                <p>Understand your rights and responsibilities as a citizen, and respect the laws of the land.</p>
            </div>
        </div>
    </div>

</body>
    <%@include file="footer.jsp"%>
</html>
