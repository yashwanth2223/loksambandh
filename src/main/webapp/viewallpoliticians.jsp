<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Leader's data</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            padding: 0;
        }

        h3 {
            font-size: 2em;
            text-align: center;
            color: #2c3e50;
            margin-top: 20px;
            text-decoration: underline;
        }

        table {
            width: 100%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: left;
            font-size: 1.1em;
            color: #34495e;
        }

        th {
            background-color: #3498db;
            color: white;
            font-weight: bold;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #f1f1f1;
        }

        tr:hover td {
            background-color: #eaf2f8;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        tr:hover {
            background-color: #e1e8f0;
        }

        h3 {
            font-size: 2rem;
            color: #2c3e50;
        }

        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 0.9rem;
            }

            th, td {
                padding: 8px;
            }

            h3 {
                font-size: 1.5rem;
            }
        }

        body {
            padding: 20px;
        }

        .back-button {
            display: inline-block;
            margin: 20px 0;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            text-align: center;
            transition: all 0.3s ease;
        }

        .back-button:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
	 <%@include file="adminnavbar.jsp"%>
    <h3><u>Leader's Data</u></h3>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Status</th>
            <th>Designation</th>
            <th>Constituency</th>
            <th>Email</th>
            <th>Contact No</th>
        </tr>
        <c:forEach items="${pinlist}" var="pin">
            <tr>
                <td><c:out value="${pin.id}"/></td>
                <td><c:out value="${pin.name}"/></td>
                <td><c:out value="${pin.gender}"/></td>
                <td><c:out value="${pin.dob}"/></td>
                <td><c:out value="${pin.status}"/></td>
                <td><c:out value="${pin.designation}"/></td>
                <td><c:out value="${pin.constituency}"/></td>
                <td><c:out value="${pin.email}"/></td>
                <td><c:out value="${pin.contactno}"/></td>
            </tr>
        </c:forEach>
    </table>

   
</body>
<%@include file="footer.jsp"%>
</html>
