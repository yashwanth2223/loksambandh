<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Politician Login</title>
<style>
   * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
        font-family: Arial, sans-serif;
        background-image: url('polback.jpg');
        background-size: cover; /* Adjusts the image to cover the entire background */
   	    background-position: center; /* Centers the image */
        background-repeat: no-repeat; 
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

   

    .popup-overlay {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.6);
        z-index: 999;
        justify-content: center;
        align-items: center;
    }

    .popup-overlay.active {
        display: flex;
    }

    .popup {
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        width: 90%;
        max-width: 400px;
        padding: 20px;
        text-align: center;
        animation: slideDown 0.5s;
    }

    @keyframes slideDown {
        from {
            transform: translateY(-20px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }

    h3 {
        color: #1a237e;
        margin-bottom: 1rem;
    }

    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .button-container {
        margin-top: 15px;
        display: flex;
        justify-content: space-between;
        gap: 10px;
    }

    input[type="submit"],
    input[type="reset"] {
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
    }

    input[type="submit"] {
        background: #1a237e;
        color: white;
    }

    input[type="reset"] {
        background: #f5f5f5;
        color: #1a237e;
    }

    input[type="submit"]:hover {
        background: #303f9f;
    }

    input[type="reset"]:hover {
        background: #e0e0e0;
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

    .google-login {
        background: #4285F4;
        color: white;
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
        margin-top: 10px;
    }

    .google-login:hover {
        background: #357ae8;
    }

    .close-btn {
        position: absolute;
        top: 10px;
        right: 10px;
        background: transparent;
        border: none;
        font-size: 1.5rem;
        cursor: pointer;
        color: #1a237e;
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
  
    
               <div class="popup-overlay" id="popup-overlay">
    <div class="popup">
        <button class="close-btn" id="close-popup">&times;</button>
        <h3>Politician Login</h3>
        <form method="post" action="checkpoliticianlogin">
            <input type="email" name="pemail" placeholder="Enter Email ID" required>
            <input type="password" name="ppassword" placeholder="Enter Password" required>
            <div class="button-container">
                <input type="reset" value="Clear">
                <input type="submit" value="Login">
            </div>
        </form>
        <div class="popup-footer">
            <a href="#">Forget Password?</a>
        </div>
        <button class="google-login">
            <i class="fab fa-google"></i> Sign in with Google
        </button>
    </div>
    
</div>



<script>
    const popupOverlay = document.getElementById("popup-overlay");
    const closePopup = document.getElementById("close-popup");

    // Open popup logic (customize based on trigger)
    document.addEventListener("DOMContentLoaded", () => {
        popupOverlay.classList.add("active");
    });

    // Close popup logic
    closePopup.addEventListener("click", () => {
        popupOverlay.classList.remove("active");
    });

    // Close popup when clicking outside
    popupOverlay.addEventListener("click", (event) => {
        if (event.target === popupOverlay) {
            popupOverlay.classList.remove("active");
        }
    });
</script>



</body>

</html>
