<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .success-message {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .success-message h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .success-message p {
            color: #666;
            margin-bottom: 20px;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="success-message">
        <h2>Registration Successful!</h2>
        <p><c:out value="${message}"/></p>
        <a href="adminhome">Politicain Added Successfully</a>
    </div>
</body>
</html>