<%@page import="com.klef.jfsd.springboot.model.Politician"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
Politician p = (Politician) session.getAttribute("politician");
if(p == null) 
{
response.sendRedirect("politiciansessionexpiry");
return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Politician</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>

	* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
   body 
   {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 20px;
     min-height: 100vh;
}

 .navbar {
            background: #2c3e50;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .navbar h1 {
            color: white;
            font-size: 1.5em;
        }

        .nav-links {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        .nav-links a:hover {
            background: rgba(255,255,255,0.1);
        }
        
         .main-content {
            margin-top: 80px;
            padding: 30px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            max-width: 1400px;
            margin-left: auto;
            margin-right: auto;
            flex:1;
        }

/* Container for the form */
.form-container {
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    margin: 40px auto;
    border: 1px solid #ddd;
}

/* Form heading */
h3 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
    font-weight: 600;
}

/* Error message style */
h4 {
    text-align: center;
    color: red;
    margin-bottom: 15px;
    font-size: 16px;
}

/* Table styles for form layout */
table {
    width: 100%;
    border-collapse: collapse;
}

td {
    padding: 10px;
    vertical-align: top;
}

/* Label styling */
label {
    font-weight: 600;
    color: #555;
    display: block;
    margin-bottom: 5px;
}

/* Input field styling */
input[type="text"], 
input[type="number"], 
input[type="password"] {
    width: 100%;
    padding: 12px;
    margin: 6px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 14px;
}

/* Button styles */
input[type="submit"], 
input[type="reset"] {
    background-color: #007BFF;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

input[type="reset"] {
    background-color: #dc3545;
}

input[type="reset"]:hover {
    background-color: #c82333;
}

/* Button container for spacing */
.button-container {
    display:flex ;
    justify-content: space-between;
    margin-top: 20px;
}

		footer {
            background-color: #1a237e;
            color: white;
            text-align: center;
            padding: 1rem;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
        }
        .footer-content 
        {
   		 display: flex;
    	flex-direction: column;
    	align-items: center;
    	justify-content: center;
		}
       

		.footer-links a 
		{
    	color: white;
    	text-decoration: none;
    	font-size: 0.9rem;
    	transition: color 0.3s;
    	align-content: center;
		}

	.footer-links a:hover 
	{
    color: #fdd835; /* Slight hover color change */
	}	

</style>
</head>
<body>
    
<h4>
    <c:out value="${message}"></c:out>
</h4>

 <nav class="navbar">
        <h1>Dashboard</h1>
        <div class="nav-links">
            <a href="politicianhome"><i class="fas fa-home"></i> Home</a>
        <a href="updatepolitician"><i class="fas fa-user-edit"></i> Update</a>
        <a href="postnews"><i class="fas fa-newspaper"></i> Post News</a>
        
        
            <a href="politicianlogout"><i class="fa-solid fa-power-off"></i> Logout</a>&nbsp;&nbsp;&nbsp;&nbsp
        </div>
    </nav>

<h3>Update My Profile</h3>
<div class="form-container">
    <form method="post" action="updatepoliticianprofile">
        <table>
            <tr>
                <td><label for="pid">Politician ID</label></td>
                <td><input type="number" id="pid" name="pid" readonly value="<%= p.getId() %>" required /></td>
            </tr>
            <tr>
                <td><label for="pname">Enter Name</label></td>
                <td><input type="text" id="pname" name="pname" value="<%= p.getName() %>" required /></td>
            </tr>
            <tr>
                <td><label for="pdesignation">Enter Designation</label></td>
                <td><input type="text" id="pdesignation" name="pdesignation" value="<%= p.getId() %>" required /></td>
            </tr>
            <tr>
                <td><label for="pconstituency">Enter Constituency</label></td>
                <td><input type="text" id="pconstituency" name="pconstituency" value="<%= p.getId() %>" required /></td>
            </tr>
            <tr>
                <td><label for="ppassword">Enter Password</label></td>
                <td><input type="password" id="ppassword" name="ppassword" value="<%= p.getPassword() %>" required/></td>
            </tr>
            <tr>
                <td><label for="pcontactno">Enter Contact</label></td>
                <td><input type="number" id="pcontactno" name="pcontactno" value="<%= p.getContactno() %>" required /></td>
            </tr>
            <tr>
                <td colspan="2" class="button-container">
                    <input type="submit" value="Update" />
                    <input type="reset" value="Clear" />
                </td>
            </tr>
        </table>
    </form>
</div>
<footer>
        <p>&copy; 2024 loksambandh. All Rights Reserved.Last updated on November 15, 2024.</p>
        <div class="footer-links">
            <a href="">Terms & Conditions</a> &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="">Policies</a>	&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="">FAQ's</a>	&nbsp;&nbsp;&nbsp;&nbsp;	
            <a href="">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        
    </footer>
</body>
</html>