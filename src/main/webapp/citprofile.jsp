<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Citizen cit = (Citizen) session.getAttribute("Citizen");
if(cit == null) {
    response.sendRedirect("citsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Citizen Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
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
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .profile-container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 600px;
            position: relative;
        }

        h4 {
            color: #2c3e50;
            font-size: 24px;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
            position: relative;
            padding-bottom: 10px;
        }

        h4::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background: #3498db;
            border-radius: 2px;
        }

        .profile-details {
            display: grid;
            gap: 20px;
            margin-top: 30px;
        }

        .detail {
            padding: 15px 20px;
            background: #f8f9fa;
            border-radius: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .detail:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .detail b {
            color: #2c3e50;
            display: inline-block;
            width: 150px;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        a {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 25px;
            background: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            transition: all 0.3s ease;
            font-weight: 500;
            text-align: center;
            box-shadow: 0 4px 15px rgba(52, 152, 219, 0.2);
        }

        a:hover {
            background: #2980b9;
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(52, 152, 219, 0.3);
        }

        .fas {
            margin-right: 8px;
        }

        @media (max-width: 480px) {
            .profile-container {
                padding: 20px;
            }

            .detail b {
                display: block;
                margin-bottom: 5px;
            }

            .detail {
                padding: 12px 15px;
            }
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h4 align='center'>Details</h4>
        <div class="profile-details">
            <div class="detail"><b>ID:</b> <%= cit.getId() %></div>
            <div class="detail"><b>NAME:</b> <%= cit.getName() %></div>
            <div class="detail"><b>GENDER:</b> <%= cit.getGender() %></div>
            <div class="detail"><b>DATE OF BIRTH:</b> <%= cit.getDob() %></div>
            <div class="detail"><b>EMAIL:</b> <%= cit.getEmail() %></div>
            <div class="detail"><b>PASSWORD:</b> <%= cit.getPassword() %></div>
            <div class="detail"><b>CONTACT:</b> <%= cit.getContactno() %></div>
            <div class="detail"><b>AADHAR NUMBER:</b> <%= cit.getAadharnumber() %></div>
        </div>

        <a href="updatecit"><i class="fa-solid fa-pen"></i> Click here to update</a>
    </div>
</body>

</html>