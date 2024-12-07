<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        :root {
            --primary-color: #1e3c72;
            --secondary-color: #2a5298;
            --text-color: #333;
            --white: #ffffff;
            --gray: #6c757d;
            --light-gray: #e0e0e0;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body, html {
            height: 100%;
            overflow: hidden;
        }

        .video-background {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;
            z-index: -1;
            background: url('fallback-image.jpg') no-repeat center center/cover;
        }

        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }

        .content {
            position: relative;
            z-index: 1;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }

        .login-link {
            position: fixed;
            top: 2rem;
            left: 2rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.8rem 1.5rem;
            background: var(--primary-color);
            color: var(--white);
            text-decoration: none;
            border-radius: 50px;
            font-weight: 500;
            font-size: 1rem;
            transition: all 0.3s ease;
            z-index: 1000;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .login-link:hover {
            background: var(--secondary-color);
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .login-link i {
            font-size: 1rem;
            transition: transform 0.3s ease;
        }

        .login-link:hover i {
            transform: translateX(-3px);
        }

        h3 {
            color: var(--white);
            font-size: 2.5rem;
            margin-bottom: 2rem;
            text-transform: uppercase;
            letter-spacing: 3px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        h3 u {
            text-decoration: none;
            border-bottom: 4px solid var(--secondary-color);
            padding-bottom: 5px;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 3rem;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 500px;
            animation: slideUp 0.5s ease-out;
            backdrop-filter: blur(10px);
        }

        @keyframes slideUp {
            from {
                transform: translateY(20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .input-group {
            position: relative;
        }

        label {
            font-weight: 600;
            color: var(--primary-color);
            display: block;
            margin-bottom: 0.5rem;
            font-size: 1.1rem;
            transition: all 0.3s ease;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 1rem;
            padding-left: 2.5rem;
            border: 2px solid var(--light-gray);
            border-radius: 10px;
            font-size: 1rem;
            transition: all 0.3s ease;
            background: var(--white);
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: var(--primary-color);
            outline: none;
            box-shadow: 0 0 10px rgba(30, 60, 114, 0.1);
        }

        .input-group i {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray);
        }

        .forgot-password {
            text-align: right;
            margin-top: -1rem;
        }

        .forgot-password a {
            color: var(--primary-color);
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }

        .forgot-password a:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        input[type="submit"],
        input[type="reset"],
        .google-login {
            padding: 1rem 2rem;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: 600;
            font-size: 1rem;
            transition: all 0.3s ease;
            flex: 1;
        }

        input[type="submit"] {
            background: var(--primary-color);
            color: var(--white);
        }

        input[type="reset"] {
            background: var(--light-gray);
            color: var(--text-color);
        }

        .google-login {
            background: var(--white);
            color: var(--text-color);
            border: 2px solid var(--light-gray);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover,
        .google-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        input[type="submit"]:hover {
            background: var(--secondary-color);
        }

        input[type="reset"]:hover {
            background: var(--gray);
            color: var(--white);
        }

        .google-login:hover {
            background: #f1f3f4;
        }

        @media (max-width: 768px) {
            h3 {
                font-size: 2rem;
            }

            .form-container {
                padding: 2rem;
                margin: 1rem;
            }

            .login-link {
                top: 1rem;
                left: 1rem;
                padding: 0.6rem 1.2rem;
                font-size: 0.9rem;
            }

            .button-container {
                flex-direction: column;
            }
        }
        
        .captcha-container {
            margin-top: 1rem;
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

        .captcha-box {
            background: #f0f2f5;
            padding: 0.8rem;
            border-radius: 8px;
            font-size: 1.5rem;
            font-family: 'Courier New', Courier, monospace;
            letter-spacing: 0.5rem;
            text-align: center;
            user-select: none;
            position: relative;
            overflow: hidden;
            color: var(--primary-color);
            font-weight: bold;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
        }

        .captcha-box::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, 
                transparent 25%, 
                rgba(0,0,0,0.05) 25%, 
                rgba(0,0,0,0.05) 50%, 
                transparent 50%, 
                transparent 75%, 
                rgba(0,0,0,0.05) 75%);
            background-size: 4px 4px;
            pointer-events: none;
        }

        .captcha-input {
            display: flex;
            gap: 1rem;
            align-items: center;
        }

        .refresh-captcha {
            background: none;
            border: none;
            color: var(--primary-color);
            cursor: pointer;
            padding: 0.5rem;
            transition: transform 0.3s ease;
        }

        .refresh-captcha:hover {
            transform: rotate(180deg);
        }

        .captcha-error {
            color: #dc3545;
            font-size: 0.9rem;
            margin-top: 0.5rem;
            display: none;
        }
    </style>
</head>
<body>
    <video autoplay muted loop  class="video-background">
        <source src="adminbgv.mp4" type="video/mp4">
        
    </video>
    <div class="overlay"></div>
<div class="content">
        <a href="/" class="login-link">
            <i class="fa-solid fa-backward"></i>Back
        </a>
        <h3>Admin Portal</h3>
        <div class="form-container">
            <form method="post" action="checkadminlogin" onsubmit="return validateForm()">
                <div class="input-group">
                    <label for="username"></label>
                    <input type="text" id="username" name="username" placeholder="Username" required/>
                    <i class="fas fa-user"></i>
                </div>
                <div class="input-group">
                    <label for="password"></label>
                    <input type="password" id="password" name="password" placeholder="Password" required/>
                    <i class="fas fa-lock"></i>
                </div>
                <div class="captcha-container">
                    <label for="captcha"></label>
                    <div class="captcha-box" id="captchaBox"></div>
                    <div class="captcha-input">
                        <input 
                            type="text" 
                            id="captchaInput" 
                            name="captcha" 
                            required 
                            placeholder="Enter CAPTCHA"
                            autocomplete="off"
                        />
                        <button type="button" class="refresh-captcha" onclick="generateCaptcha()">
                            <i class="fas fa-sync-alt"></i>
                        </button>
                    </div>
                    <div class="captcha-error" id="captchaError">
                        Invalid CAPTCHA. Please try again.
                    </div>
                </div>
                <div class="forgot-password">
                    <a href="#">Forgot Password?</a>
                </div>
                <div class="button-container">
                    <input type="submit" value="Login"/>
                    <input type="reset" value="Clear" onclick="generateCaptcha()"/>
                </div>
                <button type="button" class="google-login">
                    <i class="fab fa-google"></i> Continue with Google
                </button>
            </form>
        </div>
    </div>

    <script>
        let captchaText = '';

        function generateCaptcha() {
            const chars = '0123';
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

        // Generate initial CAPTCHA when page loads
        document.addEventListener('DOMContentLoaded', generateCaptcha);
    </script>
    <%@include file="footer.jsp"%>
</body>

</html>