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
<html>
<head>
    <title>Politician Count Visualization</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Include Chart.js -->
</head>
<body>
    <div class="stat-card">
        <div class="stat-number">
           <c:set var="politicianCount" value="${count != null ? count : 0}" />

           
            
        </div>
        <div class="stat-label">News Posted</div>
    </div>

    <canvas id="politicianChart" width="400" height="200"></canvas> <!-- Chart container -->

    <script>
        // Pass the politician count from JSP to JavaScript
        const politicianCount = ${count != null ? count : 0};

        // Chart.js script
        const ctx = document.getElementById('politicianChart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'bar', // Type of chart
            data: {
                labels: ['Politicians'], // Labels for the data
                datasets: [{
                    label: 'Number of Politicians',
                    data: [politicianCount], // Data from JSP
                    backgroundColor: ['rgba(75, 192, 192, 0.2)'], // Bar color
                    borderColor: ['rgba(75, 192, 192, 1)'], // Border color
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true // Y-axis starts from 0
                    }
                }
            }
        });
    </script>
</body>
</html>
