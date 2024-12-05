<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Post Problems</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
 body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

.container {
    max-width: 800px;
    margin: 20px auto;
    position: relative;
}

h2 {
    text-align: center;
    color: #2c3e50;
    margin-bottom: 30px;
    font-size: 2.5em;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
}

form {
    background-color: white;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
}

label {
    font-weight: 600;
    display: block;
    margin-bottom: 8px;
    color: #34495e;
    font-size: 1.1em;
}

input[type=text], textarea {
    width: 100%;
    padding: 12px 15px;
    margin-bottom: 20px;
    display: inline-block;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    font-size: 1em;
    transition: all 0.3s ease;
}

input[type=text]:focus, textarea:focus {
    border-color: #3498db;
    box-shadow: 0 0 8px rgba(52, 152, 219, 0.3);
    outline: none;
}

input[type=file] {
    margin: 15px 0;
    padding: 10px;
    width: 100%;
    background: #f7f9fc;
    border: 2px dashed #3498db;
    border-radius: 8px;
    cursor: pointer;
}

input[type=submit], input[type=reset] {
    background-color: #3498db;
    color: white;
    padding: 12px 25px;
    margin: 8px 10px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
    font-weight: 600;
    transition: all 0.3s ease;
}

input[type=submit]:hover {
    background-color: #2980b9;
    transform: translateY(-2px);
}

input[type=reset] {
    background-color: #e74c3c;
}

input[type=reset]:hover {
    background-color: #c0392b;
    transform: translateY(-2px);
}

.button-group {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 20px;
}

.back-link {
    position: absolute;
    top: 10px;
    left: 10px;
    text-decoration: none;
    color: #2c3e50;
    display: flex;
    align-items: center;
    gap: 8px;
    font-weight: 600;
    padding: 10px 15px;
    border-radius: 6px;
    transition: all 0.3s ease;
    background-color: white;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.back-link:hover {
    transform: translateX(-5px);
    background-color: #f8f9fa;
}

.fa-backward {
    font-size: 1.1em;
}

@media (max-width: 768px) {
    .container {
        margin: 10px;
    }
    
    form {
        padding: 20px;
    }
}
</style>
</head>
<body>
    <div class="container">
       
   <h2>Post Problems</h2>
    <form action="insertproblem" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required placeholder="Enter the title of your problem">

        <label for="content">Content:</label>
        <textarea id="content" name="content" rows="4" cols="50" required 
                  placeholder="Describe your problem in detail..."></textarea>

        <label for="image">Upload Image:</label>
        <input type="file" id="image" name="image" accept="image/*">

        <div class="button-group">
            <input type="submit" value="Post">
            <input type="reset" value="Clear">
        </div>
    </form>
     <a href="/cithome" class="back-link">
            <i class="fa-solid fa-backward"></i> Back
        </a>
</div>

</body>

</html>