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
        background-color: #f4f4f4;
        margin: 0;
        padding: 0; /* Removed padding from body to avoid unnecessary space */
        min-height: 100vh; /* Minimum height to fill the viewport */
        display: flex;
        flex-direction: column; /* Set up a column layout */
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

        h4 {
            color: red;
            text-align: center;
        }

        h3 {
            text-align: center;
            color: #333;
        }

        .container {
        flex: 1; /* Allow the container to grow and fill the available space */
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 20px;
    }

        .form-container {
            max-width: 400px; /* Set a max width for the form */
            margin-left: 20px; /* Space between image and form */
            background-color: white; /* White background for form */
            padding: 20px; /* Padding around the form */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        img {
            max-width: 300px; /* Set maximum width for image */
            height: auto; /* Maintain aspect ratio */
            border-radius: 8px; /* Rounded corners for image */
        }

        table {
            width: 100%; /* Full width for table */
        }

        label {
            display: block; /* Block display for labels */
            margin-bottom: 5px; /* Space below labels */
            font-weight: bold; /* Bold labels */
        }

        input[type="email"],
        input[type="password"] {
            width: calc(100% - 20px); /* Full width minus padding */
            padding: 10px; /* Padding inside inputs */
            border-radius: 5px; /* Rounded corners for inputs */
            border: 1px solid #ccc; /* Light border */
            margin-bottom: 15px; /* Space below inputs */
        }

        .button-container {
            text-align: center; /* Center buttons */
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #007BFF; /* Primary button color */
            color: white; /* Text color for buttons */
            padding: 10px 15px; /* Padding inside buttons */
            border: none; /* Remove border */
            border-radius: 5px; /* Rounded corners for buttons */
            cursor: pointer; /* Pointer cursor on hover */
            margin-right: 10px; /* Space between buttons */
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #0056b3; /* Darker shade on hover for submit button */
        }

       

        @media (max-width: 600px) {
            .container {
                flex-direction: column; /* Stack items vertically on small screens */
                align-items: flex-start; /* Align items to start on small screens */
                margin-top: 10px;
            }
            
            .form-container {
                width: 90%; /* Full width on smaller screens */
                margin-left: 0; /* Remove left margin on small screens */
                padding: 15px; /* Adjust padding for smaller screens */
                box-shadow: none; /* Remove shadow on smaller screens for simplicity */
                border-radius: 0; /* Remove rounded corners on small screens for simplicity */ 
                background-color:#f9f9f9;
                border :1px solid #ccc;
                
             }
             
             img {
                 max-width :90%; 
             }
             
           
             
             h3{
                 font-size :18px;
             }
             
             h4{
                 font-size :14px;
             }
             
             label{
                 font-size :14px;
             }
             
             input[type="email"],
             input[type="password"]{
                 font-size :14px;
             }
             
             input[type="submit"],
             input[type="reset"]{
                 font-size :14px;
             }
         }
         
         footer {
    text-align: center; /* Align all footer text to the center */
    padding: 20px; /* Add some spacing inside the footer */
    background-color: #2c2f77; /* Ensure the footer background is distinct */
    color: white; /* Keep the text color consistent */
    font-size: 14px; /* Adjust font size for readability */
}
  .popup-footer {
        margin-top: 20px;
        font-size: 0.9rem;
    }

    .popup-footer a {
        color: #1a237e;
        text-decoration: none;
        font-weight: bold;
    }

    .popup-footer a:hover {
        text-decoration: underline;
    } 
    
    .captcha-container {
            margin-top: 15px;
            margin-bottom: 15px;
        }

        .captcha-box {
            background: #f0f2f5;
            padding: 10px;
            border-radius: 5px;
            font-size: 1.2rem;
            font-family: 'Courier New', Courier, monospace;
            letter-spacing: 5px;
            text-align: center;
            user-select: none;
            position: relative;
            overflow: hidden;
            color: #1a237e;
            font-weight: bold;
            margin-bottom: 10px;
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
            gap: 10px;
            align-items: center;
        }

        .captcha-input input {
            flex-grow: 1;
        }

        .refresh-captcha {
            background: none;
            border: none;
            color: #1a237e;
            cursor: pointer;
            padding: 5px;
            transition: transform 0.3s ease;
        }

        .refresh-captcha:hover {
            transform: rotate(180deg);
        }

        .captcha-error {
            color: red;
            font-size: 0.9rem;
            margin-top: 5px;
            display: none;
        }

        @media (max-width: 600px) {
            .captcha-box {
                font-size: 1rem;
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
  
   <div class="container">
       <img src="login.png" alt="Login Image">
      
       <div class="form-container">
        <h3>Citizen Portal</h3>
           <form method="post" action="checkcitlogin" onsubmit="return validateForm()">
               <table>
                   <tr>
                       <td><label for="email"></label></td>
                       <td><input type="email" id="email" name="email" placeholder="Email" required/></td>
                   </tr>
                   <tr>
                       <td><label for="password"></label></td>
                       <td><input type="password" id="password" name="password" placeholder="Password" required/></td>
                   </tr>
                   <tr>
                       <td colspan="2">
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
                    <a href="#">Forget Password?</a>
                </div>
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
</body>
<%@include file="footer.jsp"%>
</html>