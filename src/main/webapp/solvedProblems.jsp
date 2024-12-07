<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Solved Citizens Problems</title>
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
    <%@include file="politiciannavbar.jsp" %>
    <br><br><br><br><br>
    <h3><u>Solved Problems</u></h3>
    
    <div class="problem-count">
        Total Solved Problems: <c:out value="${count}"/>
    </div>
    
    <table>
        <tr>
            <th>S.No</th>
            <th>NAME</th>
            <th>CONTACT</th>
            <th>CONSTITUENCY</th>
            <th>TITLE</th>
            <th>CONTENT</th>
            <th>STATUS</th>
            <th>IMAGE</th>
        </tr>
        <c:forEach items="${cplist}" var="cp">
        <tr>
            <td><c:out value="${cp.id}"/></td>
            <td><c:out value="${cp.name}"/></td>
            <td><c:out value="${cp.contactno}"/></td>
            <td><c:out value="${cp.constituency}"/></td>
            <td><c:out value="${cp.title}"/></td>
            <td><c:out value="${cp.content}"/></td>
            <td><c:out value="${cp.status}"/></td>
            
            <td>
                <img src='displayprobsimage?id=${cp.id}' alt="Problem Image">
            </td>
        </tr>
        </c:forEach>
    </table>
</body>
<%@include file="footer.jsp"%>
</html>