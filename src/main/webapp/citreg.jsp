<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styles */
        
         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h3 {
            text-align: center;
            margin-top: 20px;
            color: #181C14; /* Dark blue for government-like tone */
            font-family: sans-serif;
        }
        
         h5 {
            text-align: center;
            margin-top: 20px;
            color: blue; /* Dark blue for government-like tone */
            font-family: sans-serif;
        }

        /* Navbar Styles */
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

        /* Form Container Styles */
        .form-container {
            margin: 20px auto;
            padding: 20px;
            max-width: 600px;
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 10px 15px;
            vertical-align: middle;
        }

        table td:first-child {
            text-align: right;
            font-weight: bold;
        }

        label {
            display: inline-block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="date"], input[type="cmail"],
        input[type="password"], input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .radio-group {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .button-container {
            text-align: center;
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
        
        .error-message {
   			 margin-top: 5px;
    		display: block;
    		color: red;
    		font-size: 12px;
}
		input:invalid {
    		border: 1px solid red;
}
        
    </style>
</head>
<body>
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
    <br><br><br><br><br>
    
    <h3>loksambandh</h3>
    <h5>Create your free account now</h5>
    <div class="form-container">
        <form method="post" action="insertcit">
            <table>
                <tr>
                    <td><label for="cname">Enter Name</label></td>
                    <td><input type="text" id="cname" name="cname" required placeholder="Your full name"/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td class="radio-group">
                        <input type="radio" id="male" name="cgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="cgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="cgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="cdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="cdob" name="cdob" required/></td>
                </tr>
                <tr>
                    <td><label for="cemail">Enter Email ID</label></td>
                    <td><input type="email" id="cemail" name="cemail" required placeholder="example@email.com"/></td>
                </tr>
                <tr>
                    <td><label for="cpwd">Enter Password</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" required placeholder="Create a strong password"/></td>
                </tr>
                <tr>
                    <td><label for="ccontact">Enter Contact</label></td>
                    <td><input type="number" id="ccontactno" name="ccontactno" required placeholder="Your contact number"/></td>
                </tr>
                <tr>
                    <td><label for="caadharnumber">Enter Aadhar Number</label></td>
                    <td><input type="number" id="caadharnumber" name="caadharnumber" required placeholder="12-digit Aadhar number"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <%@include file="footer.jsp"%>
    <script src="resources/script/citreg.js"></script>
    
</body>
</html>
