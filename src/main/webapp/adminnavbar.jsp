<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin </title>
<!-- Add Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
   * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
  background-color: #f5f5f5;
}

h2 {
  color: #1a237e;
  padding: 20px 0;
  font-size: 28px;
  text-transform: uppercase;
  letter-spacing: 1px;
  border-bottom: 2px solid #1a237e;
  margin-bottom: 20px;
}

.navbar {
  background-color: #1a237e;
  padding: 15px 20px;
  border-radius: 0;
  margin: 0;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.navbar .nav-links {
  display: flex;
  align-items: center;
  gap: 20px;
}

.navbar .nav-links a {
  color: white;
  text-decoration: none;
  padding: 10px 20px;
  border-radius: 5px;
  transition: all 0.3s ease;
  display: inline-flex;
  align-items: center;
  gap: 8px;
}

.navbar .nav-links a:hover {
  background-color: rgba(255, 255, 255, 0.1);
  transform: translateY(-2px);
}

.navbar .nav-links i {
  font-size: 18px;
}
.navbar .logout {
  display: flex;
  align-items: center;
  margin-left: auto;
}

.navbar .logout a {
  color: white;
  text-decoration: none;
  padding: 10px 20px;
  border-radius: 5px;
  transition: all 0.3s ease;
  display: inline-flex;
  align-items: center;
  gap: 8px;
}

.navbar .logout a:hover {
  background-color: rgba(255, 255, 255, 0.1);
  transform: translateY(-2px);
  }
  
  .navbar .logout i {
  font-size: 18px;
}
</style>
</head>
<body>
<h2 align="center">Admin portal</h2>
    <div class="navbar">
    <div class="nav-links">
        <a href="adminhome"><i class="fas fa-home"></i> Home</a>
        <a href="politicianreg"><i class="fas fa-user-tie"></i> Add Politician</a>
        <a href="viewallpoliticians"><i class="fa-regular fa-eye"></i> View Politician</a>
        <a href="deletepoli"><i class="fa-regular fa-eye"></i> Delete Politician</a>
         <a href="viewproblems1"><i class="fa-regular fa-eye"></i> View Problems</a>
        
        </div>
        <div class="logout">
         <a href="adminlogout"><i class="fa-solid fa-power-off"></i></a>&nbsp;&nbsp;&nbsp;
         </div>
    </div>
    
    
</body>
</html>