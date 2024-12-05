<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
        }

        h3 {
            color: #240750;
            font-size: 2.5em;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        h3 u {
            text-decoration: none;
            border-bottom: 4px solid #ffffff;
            padding-bottom: 5px;
        }

        .form-container {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 700px;
            position: relative;
            overflow: hidden;
        }

        .form-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(to right, #667eea, #764ba2);
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
            color: #4a5568;
            font-weight: 500;
            font-size: 15px;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="password"],
        input[type="number"],
        input[type="date"],
        input[type="cmail"] {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e2e8f0;
            border-radius: 8px;
            font-size: 15px;
            transition: all 0.3s ease;
            background-color: #f8fafc;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="number"]:focus,
        input[type="date"]:focus,
        input[type="cmail"]:focus {
            border-color: #667eea;
            outline: none;
            box-shadow: 0 0 10px rgba(102, 126, 234, 0.1);
            background-color: white;
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
            padding: 12px 30px;
            margin: 0 10px;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        input[type="submit"] {
            background: #667eea;
            color: white;
        }

        input[type="reset"] {
            background: #fc8181;
            color: white;
        }

        input[type="submit"]:hover {
            background: #5a67d8;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }

        input[type="reset"]:hover {
            background: #f56565;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(252, 129, 129, 0.4);
        }

        .login-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin-top: 25px;
            padding: 12px 25px;
            background: white;
            color: #667eea;
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

        /* Custom styling for number input */
        input[type="number"]::-webkit-inner-spin-button,
        input[type="number"]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
            }

            h3 {
                font-size: 2em;
            }

            input[type="submit"],
            input[type="reset"] {
                width: 100%;
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <h3><u>Registration</u></h3>
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
                    <td><input type="cmail" id="cemail" name="cemail" required placeholder="example@email.com"/></td>
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
    
    <a href="/" class="login-link">
        <i class="fa-solid fa-backward"></i>Back
    </a>
</body>
</html>