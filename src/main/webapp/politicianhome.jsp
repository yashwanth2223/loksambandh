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
    <title>
    Politician Dashboard
    </title>
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

        .main-content {
            margin-top: 80px;
            padding: 30px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            max-width: 1400px;
            margin-left: auto;
            margin-right: auto;
            flex:1;
        }

        .dashboard-card {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .card-header h2 {
            color: #2c3e50;
            font-size: 1.2em;
        }

        .problem-list {
            max-height: 400px;
            overflow-y: auto;
        }

        .problem-item {
            padding: 15px;
            border: 1px solid #eee;
            border-radius: 5px;
            margin-bottom: 10px;
            transition: transform 0.2s ease;
        }

        .problem-item:hover {
            transform: translateX(5px);
            border-left: 3px solid #3498db;
        }

        .problem-title {
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 5px;
        }

        .problem-meta {
            font-size: 0.9em;
            color: #7f8c8d;
        }

        .news-form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .form-group label {
            color: #2c3e50;
            font-weight: 500;
        }

        .form-group input,
        .form-group textarea {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 0.9em;
        }

        .form-group textarea {
            min-height: 150px;
            resize: vertical;
        }

        .submit-btn {
            background: #3498db;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 500;
            transition: background 0.3s ease;
        }

        .submit-btn:hover {
            background: #2980b9;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .stat-card {
            background: linear-gradient(135deg, #00b4db, #0083b0);
            padding: 20px;
            border-radius: 10px;
            color: white;
            text-align: center;
        }

        .stat-number {
            font-size: 2em;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .stat-label {
            font-size: 0.9em;
            opacity: 0.9;
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
        
         .problem-count-card {
            width: 150px; /* Adjust the width as needed */
            height:150px;
            padding: 2px;
            background-color: #f2f2f2;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin: 20px auto; /* Centers the card horizontally */
        }

        /* Count value */
        .problem-count {
            font-size: 2em;
            font-weight: bold;
            color: #333;
        }
         footer {
            background-color: #1a237e;
            color: white;
            text-align: center;
            padding: 1rem;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
        }
        .footer-content 
        {
   		 display: flex;
    	flex-direction: column;
    	align-items: center;
    	justify-content: center;
		}
       

		.footer-links a 
		{
    	color: white;
    	text-decoration: none;
    	font-size: 0.9rem;
    	transition: color 0.3s;
    	align-content: center;
		}

	.footer-links a:hover 
	{
    color: #fdd835; /* Slight hover color change */
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
        
        
            <a href="politicianlogout"><i class="fa-solid fa-power-off"></i> Logout</a>&nbsp;&nbsp;&nbsp;&nbsp
        </div>
    </nav>

    <main class="main-content">
        <!-- Statistics Overview -->
        <section class="dashboard-card" style="grid-column: 1 / -1;">
            <div class="card-header">
                <h2>Overview</h2>
            </div>
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-number">0
                    
                    </div>
                    <div class="stat-label">Total Problems</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number">0</div>
                    <div class="stat-label">Resolved</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number">0</div>
                    <div class="stat-label">Pending</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number">
                    <c:out value="${count != null ? count : 0}"></c:out>
                    </div>
                    <div class="stat-label">News Posted</div>
                </div>
            </div>
        </section>

        <!-- Problems Section -->
        <section class="dashboard-card">
            <div class="card-header">
                <h2>Recent Problems</h2>
            </div>
            <div class="problem-list">
                <div class="problem-item">
                    <div class="problem-title">Road Maintenance Required</div>
                    <div class="problem-meta">Location: Ward 7 • Posted: 2 hours ago</div>
                </div>
                <div class="problem-item">
                    <div class="problem-title">Street Light Issues</div>
                    <div class="problem-meta">Location: Central Park • Posted: 5 hours ago</div>
                </div>
                <div class="problem-item">
                    <div class="problem-title">Water Supply Disruption</div>
                    <div class="problem-meta">Location: East Block • Posted: 1 day ago</div>
                </div>
                <div class="problem-item">
                    <div class="problem-title">Garbage Collection Delay</div>
                    <div class="problem-meta">Location: South Zone • Posted: 2 days ago</div>
                </div>
            </div>
        </section>

        <!-- Add News Section -->
        <section class="dashboard-card">
            <div class="card-header">
                <h2>Add News</h2>
            </div>
            <form class="news-form">
                <div class="form-group">
                    <label for="news-title">Title</label>
                    <input type="text" id="news-title" required placeholder="Enter news title">
                </div>
                <div class="form-group">
                    <label for="news-content">Content</label>
                    <textarea id="news-content" required placeholder="Enter news content"></textarea>
                </div>
                <div class="form-group">
                    <label for="news-image">Image (Optional)</label>
                    <input type="file" id="news-image" accept="image/*">
                </div>
                <button type="submit" class="submit-btn">Post News</button>
            </form>
        </section>
        
        
         <section class="dashboard-card">
            <div class="card-header">
                <h2>Other Tasks</h2>
            </div>
            <div class="problem-list">
            <a href="/politicians"><i class="fas fa-newspaper"></i>View your peer</a>
            <br>
            <a href="viewproblems"><i class="fas fa-newspaper"></i>View Problems</a>
             
                
            </div>
            
        </section>
    </main>
   
</body>
<%@include file="footer.jsp"%>
</html>

                
