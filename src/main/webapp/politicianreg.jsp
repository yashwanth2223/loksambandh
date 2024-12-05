<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Politician Registration | Socio Governance Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f0f4f8;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

       
      

        .form-container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 700px;
            border-top: 5px solid #1a5f7a;
        }

        table {
            width: 100%;
        }

        tr {
            margin-bottom: 20px;
            display: block;
        }

        td {
            padding: 8px 0;
        }

        label {
            color: #2c3e50;
            font-weight: 600;
            font-size: 14px;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="date"] {
            width: 100%;
            padding: 10px 15px;
            border: 1px solid #bdc3c7;
            border-radius: 4px;
            font-size: 14px;
            background-color: #f9f9f9;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus {
            border-color: #1a5f7a;
            outline: none;
            box-shadow: 0 0 5px rgba(26, 95, 122, 0.2);
        }

        .radio-group {
            display: flex;
            gap: 20px;
            align-items: center;
            padding: 10px 0;
        }

        input[type="radio"] {
            margin-right: 5px;
            cursor: pointer;
        }

        input[type="radio"] + label {
            display: inline-block;
            margin: 0;
            cursor: pointer;
        }

        .button-container {
            text-align: center;
            padding-top: 20px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 25px;
            margin: 0 10px;
            border: none;
            border-radius: 4px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        input[type="submit"] {
            background-color: #1a5f7a;
            color: white;
        }

        input[type="reset"] {
            background-color: #95a5a6;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #14475e;
        }

        input[type="reset"]:hover {
            background-color: #7f8c8d;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
            }

            .radio-group {
                flex-direction: column;
                align-items: flex-start;
            }

            input[type="submit"],
            input[type="reset"] {
                width: 100%;
                margin: 10px 0;
            }
        }
         .login-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin-top: 25px;
            padding: 12px 25px;
            background: white;
            color: black;
            text-decoration: none;
            border-radius: 25px;
            font-weight: 500;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .login-link:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            background: #f8fafc;
        }
        
        

        
    </style>
</head>
<body>
    

   

    <div class="form-container">
        <form method="post" action="insertpolitician">
            <table>
                <tr>
                    <td><label for="pname">Enter Name</label></td>
                    <td><input type="text" id="pname" name="pname" required placeholder="Full Name as per official records"/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td class="radio-group">
                        <input type="radio" id="male" name="pgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="pgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="pgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="pdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="pdob" name="pdob" required/></td>
                </tr>
                <tr>
                    <td><label>Marital Status</label></td>
                    <td class="radio-group">
                        <input type="radio" id="married" name="pstatus" value="MARRIED" required/>
                        <label for="married">Married</label>
                        <input type="radio" id="unmarried" name="pstatus" value="UNMARRIED" required/>
                        <label for="unmarried">Unmarried</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="pdesignation">Current Designation</label></td>
                    <td><input type="text" id="pdesignation" name="pdesignation" required placeholder="Official Designation"/></td>
                </tr>
                <tr>
                    <td><label for="pconstituency">Constituency</label></td>
                    <td><input type="text" id="pconstituency" name="pconstituency" required placeholder="Electoral Constituency"/></td>
                </tr>
                <tr>
                    <td><label for="pemail">Official Email ID</label></td>
                    <td><input type="email" id="pemail" name="pemail" required placeholder="Official government email"/></td>
                </tr>
                <tr>
                    <td><label for="ppassword">Create Password</label></td>
                    <td><input type="password" id="ppassword" name="ppassword" required placeholder="Secure password for portal access"/></td>
                </tr>
                <tr>
                    <td><label for="pcontactno">Official Contact Number</label></td>
                    <td><input type="text" id="pcontactno" name="pcontactno" required placeholder="Official contact number"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
             <a href="adminhome" class="login-link">
        <i class="fa-solid fa-backward"></i>Back
        </a>
        </form>
    </div>
   

    <%@include file="footer.jsp"%>
</body>
</html>