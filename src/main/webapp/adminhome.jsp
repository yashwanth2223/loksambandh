<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
   * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #f5f5f5;
    display: flex;
    flex-direction: column;
    min-height: 100vh; /* Ensure the body takes the full viewport height */
}

.welcome-message {
    text-align: center;
    margin-top: 50px;
    padding: 30px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    margin: 40px 20px;
    color: #1a237e;
    font-size: 24px;
    font-weight: 600;
    flex: 1; /* Take up remaining vertical space */
}



</style>
</head>
<body>
<%@include file="adminnavbar.jsp"%>
<div class="welcome-message">
    Welcome Admin
</div>

 

</body>
 <%@include file="footer.jsp"%>
</html>