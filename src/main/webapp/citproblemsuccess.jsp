<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <style>
        /* General styles for body and layout */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: #f4f4f9;
            color: #333;
        }

        /* Content container */
        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
        }

        .message-box {
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .message-box h1 {
            font-size: 24px;
            color: #4caf50;
            margin-bottom: 15px;
        }

        .message-box p {
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 20px;
        }

        .message-box a {
            display: inline-block;
            text-decoration: none;
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .message-box a:hover {
            background-color: #45a049;
        }

        /* Footer styling */
        footer {
            background-color: #2a2a5a;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 14px;
        }

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
    <!-- Main Content -->
    <div class="content">
        <div class="message-box">
            <h1>Success!</h1>
            <p><c:out value="${message}"></c:out></p>
            <a href="cithome">Back</a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 All Rights Reserved by <a href="#">Your Application</a>.
    </footer>
</body>
</html>
