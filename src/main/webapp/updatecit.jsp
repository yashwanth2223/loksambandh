<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Citizen cit = (Citizen) session.getAttribute("Citizen");
if(cit == null) {
    response.sendRedirect("citsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Citizen Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #e0e8ff 0%, #b0c4de 100%);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 2rem;
        }

        .home-link {
            position: absolute;
            top: 20px;
            left: 20px;
            color: #2c3e50;
            text-decoration: none;
            padding: 12px 24px;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 500;
        }

        .home-link:hover {
            transform: translateY(-2px);
            background: #2c3e50;
            color: white;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .form-container {
            background: white;
            padding: 2rem 3rem;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            margin-top: 3rem;
        }

        h3 {
            color: #2c3e50;
            text-align: center;
            font-size: 1.8rem;
            margin-bottom: 2rem;
            padding-bottom: 1rem;
            border-bottom: 2px solid #e0e8ff;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 1rem;
        }

        td {
            padding: 8px 0;
        }

        label {
            color: #2c3e50;
            font-weight: 500;
            font-size: 1rem;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"],
        input[type="number"] {
            width: 100%;
            padding: 12px 16px;
            border: 2px solid #e0e8ff;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s ease;
            background: #f8faff;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="number"]:focus {
            border-color: #2c3e50;
            outline: none;
            box-shadow: 0 0 0 3px rgba(44, 62, 80, 0.1);
        }

        input[readonly] {
            background-color: #f0f2f5;
            cursor: not-allowed;
        }

        .button-container {
            text-align: center;
            padding-top: 1.5rem;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 12px 30px;
            margin: 0 10px;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"] {
            background-color: #2c3e50;
            color: white;
        }

        input[type="reset"] {
            background-color: #e74c3c;
            color: white;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        @media (max-width: 768px) {
            .form-container {
                padding: 1.5rem;
                margin-top: 4rem;
            }

            table {
                border-spacing: 0 0.8rem;
            }

            input[type="submit"],
            input[type="reset"] {
                padding: 10px 20px;
                width: 45%;
                margin: 5px;
            }

            .home-link {
                top: 10px;
                left: 10px;
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <a href="cithome" class="home-link">
        <i class="fas fa-home"></i> Home
    </a>

    <!-- Form Container -->
    <div class="form-container">
        <h3>Update Citizen Profile</h3>

        <form method="post" action="updatecitprofile">
            <table>
                <tr>
                    <td><label for="cid">Citizen ID</label></td>
                    <td><input type="number" id="cid" name="cid" readonly value="<%= cit.getId() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="cname">Enter Name</label></td>
                    <td><input type="text" id="cname" name="cname" value="<%= cit.getName() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="cpwd">Enter Password</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" value="<%= cit.getPassword() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="ccontact">Enter Contact</label></td>
                    <td><input type="number" id="ccontact" name="ccontact" value="<%= cit.getContactno() %>" required /></td>
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
</body>
</html>