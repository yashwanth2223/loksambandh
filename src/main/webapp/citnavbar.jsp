<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LOKSAMBANDH</title>
    <!-- Link to Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f7fa;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            padding: 20px 0;
            font-size: 2.5em;
            letter-spacing: 2px;
            text-transform: uppercase;
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        .navbar {
            background: white;
            padding: 15px 30px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            color: #2c3e50;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 25px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 500;
            font-size: 16px;
        }

        .navbar a i {
            font-size: 18px;
        }

        .navbar a:hover {
            background: #3498db;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
        }

        /* Special styling for logout button */
        .navbar a:last-child {
            background: #e74c3c;
            color: white;
        }

        .navbar a:last-child:hover {
            background: #c0392b;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                gap: 15px;
                padding: 15px;
            }

            .navbar a {
                width: 100%;
                justify-content: center;
            }

            h2 {
                font-size: 2em;
                padding: 15px 0;
            }
        }

        /* Animation for hover effects */
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        .navbar a:active {
            animation: pulse 0.3s ease-in-out;
        }
    </style>
</head>
<body>

    <!-- Title Section -->
    <h2>LOKSAMBANDH</h2>

    <!-- Navbar Section -->
    <div class="navbar">
        <a href="cithome"><i class="fas fa-home"></i> Home</a>
        <a href="citcontactus"><i class="fas fa-envelope"></i> Contact Us</a>
        <a href="citprofile"><i class="fas fa-address-card"></i> Profile</a>
        <a href="citproblems"><i class="fas fa-address-card"></i> Post your Problem</a>
        <a href="citlogout"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

</body>
</html>