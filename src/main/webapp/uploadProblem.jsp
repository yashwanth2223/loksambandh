<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Upload Problem</title>
</head>
<body>
    <h1>Upload a Problem</h1>
    <form action="${pageContext.request.contextPath}/uploadProblem" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required/><br/><br/>

        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea><br/><br/>

        <label for="image">Image:</label>
        <input type="file" id="image" name="image" accept="image/*" required/><br/><br/>

        <input type="submit" value="Upload Problem"/>
    </form>
    
    <br/>
    <a href="${pageContext.request.contextPath}/viewproblems">View Uploaded Problems</a>
</body>
</html>