<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Posts</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
            color: #333;
        }
        h3 {
            color: #2c3e50;
            text-align: center;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #e0e0e0;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
            text-transform: uppercase;
            font-weight: 600;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e6f2ff;
            transition: background-color 0.3s ease;
        }
        .problem-count {
            text-align: center;
            margin-bottom: 15px;
            font-weight: bold;
            color: #2c3e50;
        }
        img {
            max-width: 100px;
            max-height: 100px;
            object-fit: cover;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <%@include file="citnavbar.jsp" %> 
    <h3><u>View Post</u></h3>
    <div class="problem-count">
        Total Posts: <c:out value="${count}"/>
    </div>
    <table>
        <tr>
           <th>ID</th>            
            <th>TITLE</th>
            <th>CONTENT</th>
            <th>IMAGE</th>
            
        </tr>
        <c:forEach items="${newlist}" var="pk">
        <tr>
          <td><c:out value="${pk.id}"/></td>           
            <td><c:out value="${pk.title}"/></td>
            <td><c:out value="${pk.content}"/></td>
            
            <td>
                <img src='viewdisimage?id=${pk.id}' alt="Problem Image"> 
            </td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>