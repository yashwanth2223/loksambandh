<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="com.klef.jfsd.springboot.model.Politician" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
Politician currentPolitician = (Politician) session.getAttribute("politician");
if (currentPolitician == null) {
    response.sendRedirect("politiciansessionexpiry");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Politician Communication</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    min-height: 100vh;
    background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
    padding: 2rem;
}

h3 {
    text-align: center;
    color: #2c3e50;
    font-size: 2.5rem;
    margin-bottom: 2rem;
    text-transform: uppercase;
    letter-spacing: 2px;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
}

.filter-form {
    max-width: 600px;
    margin: 0 auto 3rem auto;
    background: white;
    padding: 2rem;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
}

.filter-form label {
    font-weight: 600;
    color: #34495e;
    margin-right: 1rem;
}

.filter-form select {
    padding: 0.8rem;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    width: 300px;
    margin-right: 1rem;
    font-size: 1rem;
    color: #2c3e50;
    transition: all 0.3s ease;
}

.filter-form select:focus {
    border-color: #3498db;
    outline: none;
    box-shadow: 0 0 10px rgba(52, 152, 219, 0.1);
}

.filter-form input[type="submit"] {
    padding: 0.8rem 2rem;
    background: #3498db;
    color: white;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-weight: 600;
    transition: all 0.3s ease;
}

.filter-form input[type="submit"]:hover {
    background: #2980b9;
    transform: translateY(-2px);
}

.cards-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
    padding: 1rem;
}

.card {
    background: white;
    border-radius: 15px;
    padding: 2rem;
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    transition: all 0.3s ease;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 30px rgba(0,0,0,0.2);
}

.card-header {
    border-bottom: 2px solid #f0f0f0;
    padding-bottom: 1rem;
    margin-bottom: 1.5rem;
}

.card-title {
    color: #2c3e50;
    font-size: 1.5rem;
    font-weight: 600;
    margin-bottom: 0.5rem;
}

.card-subtitle {
    color: #7f8c8d;
    font-size: 1rem;
}

.card-body {
    display: grid;
    gap: 1rem;
}

.card-info {
    display: flex;
    align-items: center;
    gap: 1rem;
}

.info-label {
    color: #7f8c8d;
    font-weight: 600;
    min-width: 120px;
}

.info-value {
    color: #2c3e50;
}

.icon {
    color: #3498db;
    width: 20px;
}
footer {
     background-color: #1a237e;
            color: white;
            text-align: center;
            padding: 1rem;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
        }
</style>
<body>
<%@include file="politiciannavbar.jsp" %>
<br>
<br>

    <h3>Politician Communication</h3>

    <form action="filterPoliticians" method="get" class="filter-form">
        <label for="constituency">Select Constituency:</label>
        <select name="constituency" id="constituency">
            <option value="">--Select a Constituency--</option>
            <c:forEach items="${constituencyList}" var="constituency">
                <option value="${constituency}">${constituency}</option>
            </c:forEach>
        </select>
        <input type="submit" value="Filter">
    </form>

    <div class="cards-container">
        <c:forEach items="${pinlist}" var="pin">
            <div class="card">
                <div class="card-header">
                    <div class="card-title"><c:out value="${pin.name}"/></div>
                    <div class="card-subtitle"><c:out value="${pin.designation}"/></div>
                </div>
                <div class="card-body">
                    <div class="card-info">
                        <i class="fas fa-id-card icon"></i>
                        <span class="info-label">ID:</span>
                        <span class="info-value"><c:out value="${pin.id}"/></span>
                    </div>
                    <div class="card-info">
                        <i class="fas fa-map-marker-alt icon"></i>
                        <span class="info-label">Constituency:</span>
                        <span class="info-value"><c:out value="${pin.constituency}"/></span>
                    </div>
                    <div class="card-info">
                        <i class="fas fa-envelope icon"></i>
                        <span class="info-label">Email:</span>
                        <span class="info-value"><c:out value="${pin.email}"/></span>
                    </div>
                    <div class="card-info">
                        <i class="fas fa-phone icon"></i>
                        <span class="info-label">Contact:</span>
                        <span class="info-value"><c:out value="${pin.contactno}"/></span>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
<%@include file="footer.jsp"%>
</html>