<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>loksambandh</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

       body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background: linear-gradient(135deg, #F7F9F2 0%, #c3cfe2 100%);
            
        }

        .navbar {
            background-color: #1a237e;
            padding: 1rem 2rem;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            display: flex;
            justify-content: flex-end;
            gap: 2rem;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 0.8rem 1.5rem;
            border-radius: 8px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 500;
        }

        .navbar a:hover {
            background: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }

        .navbar i {
            font-size: 1.2rem;
        }

        .main-content {
            flex: 1;
            padding-top: 100px; /* Space for fixed navbar */
            text-align: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 120px 20px 40px;
        }

        .hero-section {
            background: rgba(255, 255, 255, 0.9);
            padding: 3rem;
            border-radius: 15px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            margin-bottom: 2rem;
        }

        .hero-section h1 {
            color:#FF4545;
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }
        
        .hero-section a
        {
       		color: black;
            text-decoration: blink;
            text-shadow: black;
            font-family: sans-serif;
        
        }

        .hero-section p {
            color: #555;
            font-size: 1.2rem;
            line-height: 1.6;
            margin-bottom: 2rem;
        }

        .card-container {
            display: flex;
            justify-content: center;
            gap: 2rem;
            flex-wrap: wrap;
            margin-bottom: 2rem;
        }

        .card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 1.5rem;
            text-align: left;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            color: #1a237e;
            margin-bottom: 0.5rem;
            font-size: 1.5rem;
        }
        
          .card a {
                color: black;
                text-decoration: none;
            }

        .card p {
            color: #555;
            font-size: 1rem;
            line-height: 1.5;
        }

        .gallery-container {
            display: flex;
            gap: 2rem;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 2rem;
        }

        .gallery-section {
            width: 100%;
            max-width: 500px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 1rem;
        }

        .gallery-section h2 {
            font-size: 1.5rem;
            color: #1a237e;
            margin-bottom: 1rem;
        }

        .gallery-section img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 0.5rem;
        }

        .gallery-section iframe {
            width: 100%;
            height: 200px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .view-all {
            display: inline-block;
            margin-top: 1rem;
            text-decoration: none;
            background: #1a237e;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            font-size: 0.9rem;
            transition: background 0.3s ease;
        }

        .view-all:hover {
            background: #3c469d;
        }

       

        @media (max-width: 768px) {
            .navbar {
                justify-content: center;
            }
            
            .hero-section h1 {
                font-size: 2rem;
            }
            
            .hero-section p {
                font-size: 1rem;
            }

            .card-container {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 90%;
            }
            
            

            .gallery-container {
                flex-direction: column;
            }
        }
        
.quick-links {
  float:left;
  width: 25%;
  background-color: #f5f7fa;
  padding: 2rem;
  border-radius: 10px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
}

.quick-links h2 {
  color: #1a237e;
  font-size: 1.5rem;
  margin-bottom: 1rem;
}

.quick-links ul {
  list-style-type: none;
  padding: 0;
}

.quick-links li {
  margin-bottom: 0.5rem;
}

.quick-links a {
  color: #555;
  text-decoration: none;
  transition: color 0.3s ease;
}

.quick-links a:hover {
  color: #1a237e;
}


.news-press-releases {
  clear: both;
  margin-top: 2rem;
}

.news-press-releases h2 {
  color: #1a237e;
  font-size: 1.5rem;
  margin-bottom: 1rem;
}

.news-item {
  display: inline-block;
  align-items: center;
  background-color: white;
  border-radius: 10px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  padding: 1.5rem;
  margin-bottom: 1.5rem;
}

	.news-item img {
  width: 200px;
  height: 150px;
  object-fit: cover;
  border-radius: 10px;
  margin-right: 1.5rem;
}

.news-item h3 {
  color: #1a237e;
  font-size: 1.2rem;
  margin-bottom: 0.5rem;
}

.news-item p {
  color: #555;
  font-size: 1rem;
  line-height: 1.5;
}
    </style>
</head>
<body>

    <nav class="navbar">
    
        <a href="/">
            <i class="fa-solid fa-house"></i>
            <span>Home</span>
        </a>
        <a href="citlogin">
            <i class="fas fa-users"></i>
            <span>Citizen</span>
        </a>
        <a href="politicianlogin">
            <i class="fas fa-user-tie"></i>
            <span>Politician</span>
        </a>	
    </nav>

    <div class="main-content">
        <div class="hero-section">
            <h1>Welcome to Loksambandh</h1>
            <p>Bridging the gap between citizens and politicians for a better tomorrow. Share your concerns, be heard, and make a difference in your community.</p>
            <a href="citreg">Register yourself</a>
        </div>

        <div class="card-container">
            <div class="card">
                <h3>Report Issues</h3>
                <p>Raise concerns about your community issues directly to your local leaders and make sure your voice is heard.</p>
            </div>
            <div class="card">
                <h3>Track Responses</h3>
                <p>Follow up on the progress of your complaints and see how your leaders are addressing them in real-time.</p>
            </div>
            <div class="card">
                <h3>Stay Informed</h3>
                <p>Get the latest updates and news from your local politicians and be aware of community developments.</p>
                <br>
                <a href="#">For more info.</a>
            </div>
        </div>
        
        

        <!-- Photo and Video Gallery -->
        <div class="gallery-container">
            <div class="gallery-section">
                <h2>Photo Gallery</h2>
                <img src="road.jpg" alt="Gallery Photo">
               
                <a href="photogallery.jsp" class="view-all">View all</a>
            </div>
            <div class="gallery-section">
                <h2>Video Gallery</h2>
                <iframe src="https://www.youtube.com/embed/sample-video" ></iframe>
                <a href="#" class="view-all">View all</a>
            </div>
        </div>
    </div>
                
    
    <div class="quick-links">
  <h2>Quick Links</h2>
  <ul>
    <li><a href="#">Contact-us</a></li>
    <li><a href="citlogin">Citizen Portal</a></li>
    <li><a href="#">Government Initiatives</a></li>
    
  </ul>
</div>


<div class="news-press-releases" align="center">
  <h2 align="center" >News</h2>
  <div class="news-item">
    <img src="resources/newsimg/ni1.jpg" alt="Inauguration of HCCB — Coca Cola Factory">
    <h3>Inauguration of HCCB — Coca Cola Factory</h3>
     <p>October 21, 2024<br>
  </div>
   <div class="news-item">
    <img src="resources/newsimg/ni1.jpg" alt="Inauguration of HCCB — Coca Cola Factory">
    <h3>Inauguration of HCCB — Coca Cola Factory</h3>
     <p>October 21, 2024<br>
  </div>
  
     
    
    
  
  <div class="news-item">
    <img src="resources/newsimg/ni2.jpeg" alt="Hon'ble CM participates in Police Flag Day Parade">
    <h3>Hon'ble CM participates in Police Flag Day Parade</h3>
    <p>October 21, 2024<br>
   
  </div>
   <div class="news-item">
    <img src="resources/newsimg/ni2.jpeg" alt="Hon'ble CM participates in Police Flag Day Parade">
    <h3>Hon'ble CM participates in Police Flag Day Parade</h3>
    <p>October 21, 2024<br>
   
  </div>
  <!-- Add more news items as needed -->
</div>


</body>
<%@include file="footer.jsp"%>
</html>

