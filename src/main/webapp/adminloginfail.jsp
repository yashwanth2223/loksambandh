<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Login Fail</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background: #f5f5f5;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        color: #333;
    }

    .error-message {
        background: #ff5252;
        color: white;
        padding: 20px;
        border-radius: 8px;
        margin-bottom: 20px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        text-align: center;
    }

    a {
        color: #1a237e;
        text-decoration: none;
        padding: 12px 25px;
        background: white;
        border-radius: 5px;
        border: 2px solid #1a237e;
        transition: all 0.3s ease;
        font-weight: 600;
    }

    a:hover {
        background: #1a237e;
        color: white;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
</style>
</head>
<body>
    <div class="error-message">
        <c:out value="${message}"></c:out>
    </div>
    <a href="adminlogin">Try Again</a>
</body>
</html>