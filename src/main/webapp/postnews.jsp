<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Post News</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background: #f5f7fa;
    color: #2c3e50;
    line-height: 1.6;
    padding-bottom: 3rem;
}

h2 {
    text-align: center;
    color: #2c3e50;
    font-size: 2.5rem;
    margin: 2rem 0;
    text-transform: uppercase;
    letter-spacing: 2px;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
}

/* News Post Form Styling */
form {
    max-width: 800px;
    margin: 2rem auto;
    padding: 2rem;
    background: white;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
}

label {
    display: block;
    margin: 1rem 0 0.5rem;
    font-weight: 600;
    color: #34495e;
    font-size: 1.1rem;
}

input[type="text"], textarea {
    width: 100%;
    padding: 0.8rem;
    border: 2px solid #e0e0e0;
    border-radius: 8px;
    font-size: 1rem;
    transition: all 0.3s ease;
}

input[type="text"]:focus, textarea:focus {
    border-color: #3498db;
    outline: none;
    box-shadow: 0 0 10px rgba(52, 152, 219, 0.1);
}

textarea {
    resize: vertical;
    min-height: 150px;
}

input[type="file"] {
    display: block;
    margin: 1rem 0;
    padding: 1rem;
    background: #f8f9fa;
    border: 2px dashed #e0e0e0;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.3s ease;
}

input[type="file"]:hover {
    border-color: #3498db;
    background: #f0f7fc;
}

.button-group {
    display: flex;
    gap: 1rem;
    margin-top: 2rem;
}

input[type="submit"], input[type="reset"] {
    flex: 1;
    padding: 1rem;
    border: none;
    border-radius: 8px;
    font-weight: 600;
    font-size: 1.1rem;
    cursor: pointer;
    transition: all 0.3s ease;
}

input[type="submit"] {
    background: #3498db;
    color: white;
}

input[type="reset"] {
    background: #e74c3c;
    color: white;
}

input[type="submit"]:hover {
    background: #2980b9;
    transform: translateY(-2px);
}

input[type="reset"]:hover {
    background: #c0392b;
    transform: translateY(-2px);
}

/* Previous News Section */
.previous-news {
    max-width: 1200px;
    margin: 4rem auto;
    padding: 0 2rem;
}

.previous-news h3 {
    text-align: center;
    color: #2c3e50;
    font-size: 2rem;
    margin-bottom: 2rem;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.news-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
}

.news-card {
    background: white;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    transition: all 0.3s ease;
}

.news-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 30px rgba(0,0,0,0.2);
}

.news-card h4 {
    padding: 1.5rem;
    margin: 0;
    color: #2c3e50;
    font-size: 1.3rem;
}

.news-card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-top: 1px solid #eee;
    border-bottom: 1px solid #eee;
}

.news-card p {
    padding: 1rem 1.5rem;
    color: #7f8c8d;
    margin: 0;
}

small {
    font-size: 0.9rem;
    color: #95a5a6;
}

/* Responsive Design */
@media (max-width: 768px) {
    form {
        margin: 2rem 1rem;
        padding: 1.5rem;
    }
    
    h2 {
        font-size: 2rem;
    }
    
    .news-container {
        grid-template-columns: 1fr;
    }
}
</style>
</head>
<body>
<%@include file="politiciannavbar.jsp" %>

<form action="insertnews" method="post" enctype="multipart/form-data">
    <h2>News Article</h2>
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" required>

    <label for="content">Content:</label>
    <textarea id="content" name="content" rows="4" cols="50" required></textarea>

    <label for="image">Upload Image:</label>
    <input type="file" id="image" name="image" accept="image/*">

    <div class="button-group">
        <input type="submit" value="Post">
        <input type="reset" value="Clear">
    </div>
</form>

<div class="previous-news">
    <h3>Previous News</h3>
    <div class="news-container">
        <div class="news-card">
            <h4>Sample News Title 1</h4>
            <img src="sample-image1.jpg" alt="News Image">
            <p><small>Posted on November 15, 2024</small></p>
        </div>
        <div class="news-card">
            <h4>Sample News Title 2</h4>
            <img src="sample-image2.jpg" alt="News Image">
            <p><small>Posted on November 14, 2024</small></p>
        </div>
    </div>
</div>

</body>
</html>