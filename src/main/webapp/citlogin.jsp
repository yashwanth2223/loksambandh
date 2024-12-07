<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Citizen Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        
        
         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #A6AEBF;
            color: #333;
        }

        h4 {
            color: #004080;
            margin-top: 20px;
            text-align: center;
        }

 h3 {
            color: #004080;
            margin-top: 20px;
            text-align: center;
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

        .container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .container img {
            display: block;
            max-width: 100px;
            margin: 0 auto 20px;
        }

        .form-container {
            text-align: center;
        }

        .form-container h3 {
            color: #004080;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 10px;
        }

        table td:first-child {
            text-align: right;
            font-weight: bold;
            width: 30%;
        }

        table td:last-child {
            width: 70%;
        }

        input[type="email"], input[type="password"], input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .captcha-container {
            text-align: left;
        }

        .captcha-box {
            background: #e6e6e6;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            padding: 8px 10px;
            margin-bottom: 10px;
        }

        .captcha-input {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .captcha-error {
            color: red;
            font-size: 12px;
            display: none;
            margin-top: 5px;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 10px 5px;
        }

        input[type="submit"] {
            background-color: #004080;
            color: #fff;
        }

        input[type="reset"] {
            background-color: #ccc;
        }

        input[type="submit"]:hover {
            background-color: #003366;
        }

        input[type="reset"]:hover {
            background-color: #b3b3b3;
        }

        .popup-footer {
            margin-top: 10px;
        }

        .popup-footer a {
            color: #004080;
            text-decoration: none;
        }

        .popup-footer a:hover {
            text-decoration: underline;
        }

        @media screen and (max-width: 600px) {
            .container {
                padding: 15px;
            }

            table td:first-child {
                text-align: left;
                font-size: 14px;
            }

            table td:last-child {
                width: 100%;
            }

            .navbar a {
                font-size: 14px;
                margin: 0 10px;
            }
        }
    </style>
</head>
<body>
    <h4 align="center">
        <c:out value="${message}"></c:out>
    </h4>
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
    <br><br><br>
     <h3>Citizen Portal</h3>

    <div class="container">
        <img src="login.png" alt="Login Image">
        <div class="form-container">
           
            <form method="post" action="checkcitlogin" onsubmit="return validateForm()">
                <table>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input type="email" id="email" name="email" placeholder="Email" required/></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password:</label></td>
                        <td><input type="password" id="password" name="password" placeholder="Password" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="captcha-container">
                                <label for="captcha"></label>
                                <div class="captcha-box" id="captchaBox"></div>
                                <div class="captcha-input">
                                    <input type="text" id="captchaInput" name="captcha" required placeholder="Enter CAPTCHA" autocomplete="off"/>
                                    <button type="button" class="refresh-captcha" onclick="generateCaptcha()">
                                        <i class="fas fa-sync-alt"></i>
                                    </button>
                                </div>
                                <div class="captcha-error" id="captchaError">
                                    Invalid CAPTCHA. Please try again.
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Login"/>
                            <input type="reset" value="Clear" onclick="generateCaptcha()"/>
                        </td>
                    </tr>
                </table>
                <div class="popup-footer" align="center">
                    <a href="#">Forgot Password?</a>
                </div>
            </form>
        </div>
    </div>

     <script>
     let captchaText = '';

     function generateCaptcha() {
         const chars = '01234';
         captchaText = '';
         for (let i = 0; i < 6; i++) {
             captchaText += chars.charAt(Math.floor(Math.random() * chars.length));
         }
         document.getElementById('captchaBox').textContent = captchaText;
         document.getElementById('captchaInput').value = '';
         document.getElementById('captchaError').style.display = 'none';
     }

     function validateForm() {
         const userInput = document.getElementById('captchaInput').value;
         const errorElement = document.getElementById('captchaError');
         if (userInput === captchaText) {
             errorElement.style.display = 'none';
             return true;
         } else {
             errorElement.style.display = 'block';
             generateCaptcha();
             return false;
         }
     }

     document.addEventListener('DOMContentLoaded', generateCaptcha);
     </script>
</body>
<%@include file="footer.jsp"%>
</html>
