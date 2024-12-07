<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .success-container {
            text-align: center;
            background: #fff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 400px;
        }

        .success-container h1 {
            font-size: 24px;
            color: #4caf50;
            margin-bottom: 15px;
        }

        .success-container p {
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 20px;
        }

        .success-container a {
            display: inline-block;
            text-decoration: none;
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .success-container a:hover {
            background-color: #45a049;
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
<%@include file="politiciannavbar.jsp" %>
    <div class="success-container">
        <h1>Success!</h1>
        <p><c:out value="${message}"></c:out></p>
        <a href="politicianhome">Go Back</a>
    </div>
    
</body>

</html>
