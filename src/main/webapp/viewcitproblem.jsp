<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Citizens Problems</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
            color: #333;
        }
        h3 {
            color: #2c3e50;
            text-align: center;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #e0e0e0;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
            text-transform: uppercase;
            font-weight: 600;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e6f2ff;
            transition: background-color 0.3s ease;
        }
        .problem-count {
            text-align: center;
            margin-bottom: 15px;
            font-weight: bold;
            color: #2c3e50;
        }
        img {
            max-width: 100px;
            max-height: 100px;
            object-fit: cover;
            border-radius: 5px;
        }
        .status-buttons {
            display: flex;
            gap: 10px;
        }
        .hidden {
            display: none; /* Hide the button */
        }
        
        .problem-count {
    background-color: #f0f4f8;
    border-left: 4px solid #2c5282;
    padding: 10px 15px;
    margin: 10px 0;
    border-radius: 0 6px 6px 0;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.problem-count-label {
    color: #1a365d;
    font-weight: 600;
}

.problem-count-value {
    color: #2c5282;
    font-size: 1.2em;
    font-weight: bold;
    margin-left: 10px;
}
    </style>
</head>
<body>
   <%@include file="politiciannavbar.jsp" %> 
   <br>
   <br>
   <br>
   <br>
   <br>
    <h3>View Problems</h3>
  
    <table>
        <tr>
           <th>S.No</th>            
        	<th>NAME</th>
        	<th>CONTACT</th>
        	<th>CONSTITUENCY</th>
            <th>TITLE</th>
            <th>CONTENT</th>
            <th>IMAGE</th>
            <th>ACTION</th> <!-- New column for actions -->
        </tr>
        <c:forEach items="${cplist}" var="cp">
        <tr>
          <td><c:out value="${cp.id}"/></td>            
        	<td><c:out value="${cp.name}"/></td>
            <td><c:out value="${cp.contactno}"/></td>
            <td><c:out value="${cp.constituency}"/></td>
            <td><c:out value="${cp.title}"/></td>
            <td><c:out value="${cp.content}"/></td>
            
            <td>
                <img src='displayprobsimage?id=${cp.id}' alt="Problem Image"> 
            </td>
            <td>
              <%--   <form action="updateStatus" method="post">
                    <input type="hidden" name="id" value="${cp.id}"/>
                    <div class="status-buttons">
                        <button type="submit" name="status" value="solved">Solved</button>
                        <button type="submit" name="status" value="inprogress" class="hidden">In Progress</button>
                        <button type="submit" name="status" value="completed">Completed</button>
                    </div>
                </form> --%>
                
                 <form action="updateStatus" method="post">
		        <input type="hidden" name="id" value="${cp.id}"/>
		        <div class="status-buttons">
	            <button type="submit" name="status" value="solved">Solved</button>
	            <button type="submit" name="status" value="pending">Pending</button>
	        </div>
    </form>
                
            </td>
        </tr>
        </c:forEach>
    </table>
      <div class="problem-count">
    <span class="problem-count-label">Total Problems:</span>
    <span class="problem-count-value"><c:out value="${count}"/></span>
</div>
</body>
<%@include file="footer.jsp"%>
</html>