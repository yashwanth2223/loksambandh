<%@ page import="com.klef.jfsd.springboot.model.Politician" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    Politician pin = (Politician) session.getAttribute("politician");
    if (pin == null) {
        response.sendRedirect("politiciansessionexpiry");
        return;
    }
    
    
   
   
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Politician Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            min-height: 100vh;
            background: #f5f6fa;
        }

        .navbar {
            background: #2c3e50;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .navbar h1 {
            color: white;
            font-size: 1.5em;
        }

        .nav-links {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        .nav-links a:hover {
            background: rgba(255,255,255,0.1);
        }

        .logout-btn {
            background: #e74c3c;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .logout-btn:hover {
            background: #c0392b;
        }

        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                padding: 15px;
                gap: 15px;
            }

            .main-content {
                margin-top: 130px;
                padding: 15px;
            }

            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
    
         <h1><%= pin.getName() %> Dashboard</h1>
        <div class="nav-links">
            <a href="politicianhome"><i class="fas fa-home"></i> Home</a>
        <a href="updatepolitician"><i class="fas fa-user-edit"></i> Update</a>
        <a href="postnews"><i class="fas fa-newspaper"></i> Post News</a>
         <a href="viewposts"><i class="fas fa-newspaper"></i> View News</a>
        
        
        <a href="politicianlogout"><i class="fa-solid fa-power-off"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;
         
        </div>
    </nav>

    
</body>
</html>
