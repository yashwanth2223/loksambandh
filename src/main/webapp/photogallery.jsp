<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gallery</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
@import url(https://fonts.bunny.net/css?family=amita:700);

 * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

body {
    background: url(https://res.cloudinary.com/ritalbradley/image/upload/v1657644013/pexels-elijah-o_donnell-3473569_o7ohfd.jpg)
        center center/cover no-repeat;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
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

h1 {
    color: #fefae0;
    font-family: Amita;
    margin: 20px auto;
    width: 450px;
    font-size: 3rem;
    text-align: center;
    border-bottom: 10px double #bc6c25;
}

img {
    width: 450px;
    height: 300px;
    margin: 10px;
    border: 10px solid #fefae0;
    filter: sepia(100%);
    transition-duration: 1s;
}

img:hover {
    border: 5px solid #fff;
    transform: scale(1.1);
    filter: none;
}


.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
}
 footer {
            background-color: #2a2a5a;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 14px;
        }

        /* Links inside the footer */
        footer a {
            color: #f4f4f9;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
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
    <br>
    <br>

<h1>Gallery</h1> 
 <div class="container">
        <img src="road.jpg" alt="Gallery Photo">
         <img src="resources/newsimg/ni2.jpeg">
         <img src="resources/newsimg/ni2.jpeg">
         <img src="resources/newsimg/ni2.jpeg">
       
    </div>
</body>
<%@include file="footer.jsp"%>
</html>