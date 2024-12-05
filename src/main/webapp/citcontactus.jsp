<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Citizen cit = (Citizen) session.getAttribute("citizen");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
        }

        h3 {
            color: #2c3e50;
            font-size: 2.2em;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-align: center;
        }

        h3 u {
            text-decoration: none;
            border-bottom: 4px solid #3498db;
            padding-bottom: 5px;
        }

        .form-container {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        table {
            width: 100%;
        }

        tr {
            margin-bottom: 20px;
            display: block;
        }

        td {
            padding: 8px 0;
            display: block;
        }

        label {
            color: #2c3e50;
            font-weight: 500;
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        textarea:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 10px rgba(52, 152, 219, 0.1);
        }

        textarea {
            height: 120px;
            resize: vertical;
        }

        .button-container {
            text-align: center;
            margin-top: 25px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 12px 30px;
            margin: 0 10px;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"] {
            background: #3498db;
            color: white;
        }

        input[type="reset"] {
            background: #e74c3c;
            color: white;
        }

        input[type="submit"]:hover {
            background: #2980b9;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(52, 152, 219, 0.3);
        }

        input[type="reset"]:hover {
            background: #c0392b;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(231, 76, 60, 0.3);
        }

        .home-link {
            position: absolute;
            top: 20px;
            left: 20px;
            padding: 12px 25px;
            background: #2c3e50;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .home-link:hover {
            background: #34495e;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(44, 62, 80, 0.3);
        }

        .home-link i {
            font-size: 18px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
            }

            h3 {
                font-size: 1.8em;
            }

            .home-link {
                position: static;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>
    <a href="cithome" class="home-link">
        <i class="fas fa-home"></i> Home
    </a>

    <h3><u>Contact Us</u></h3>
    <div class="form-container">
        <form method="post" action="sendemail">
            <table>
                <tr>
                    <td><label for="name">Name</label></td>
                    <td><input type="text" id="name" name="name" required/></td>
                </tr>
                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><input type="email" id="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><label for="subject">Subject</label></td>
                    <td><input type="text" id="subject" name="subject" required/></td>
                </tr>
                <tr>
                    <td><label for="message">Message</label></td>
                    <td><textarea id="message" name="message"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Send"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <%@include file="footer.jsp"%>
</body>
</html>