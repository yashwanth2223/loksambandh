<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer Alignment</title>
<style>
/* Footer Styles */
.site-footer {
  background-color: #424874;
  padding: 45px 0 20px;
  font-size: 15px;
  line-height: 24px;
  color: #737373;
}

.site-footer h6 {
  color: #fff;
  font-size: 16px;
  text-transform: uppercase;
  margin-top: 5px;
  letter-spacing: 2px;
}

.site-footer a {
  color: #737373;
  text-decoration: none; /* Removes underline */
}

.site-footer a:hover {
  color: #3366cc;
  text-decoration: none; /* Removes underline on hover */
}

.footer-links {
  padding-left: 0;
  list-style: none;
}

.footer-links li {
  display: block;
}

.footer-links a {
  color: white;
  text-decoration: none; /* Removes underline */
}

.footer-links a:hover {
  color: #3366cc;
  text-decoration: none; /* Removes underline on hover */
}

.copyright-text {
  margin: 0;
  text-align: center; /* Centers the text */
  color: white;
}

.footer-container {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap; /* Ensure responsiveness */
}

.footer-section {
  flex: 1; /* Equal width for each section */
  margin: 0 15px; /* Add some spacing between sections */
  color: white;
}

.footer-section:first-child {
  flex: 2; /* Make the "About" section wider */
}

@media (max-width: 768px) {
  .footer-container {
    flex-direction: column; /* Stack sections vertically on small screens */
  }

  .footer-section {
    margin: 15px 0; /* Add spacing between stacked sections */
  }
}
</style>
</head>
<body>
  <!-- Site Footer -->
  <footer class="site-footer">
    <div class="container1">
      <div class="footer-container">
        <!-- About Section -->
        <div class="footer-section">
          <h6>About</h6>
          <p class="text-justify">
           We aim to establish better communication between citizens and their elected officials. 
           To this effect, the available web application will enable citizens to report problems, share feedback and receive information from politicians 
           hence increasing transparency and responsiveness in governance.
          </p>
        </div>

        <!-- Categories Section -->
        <div class="footer-section">
          <h6>Media</h6>
          <ul class="footer-links">
            <li><a href="photogallery.jsp">Photo Gallery</a></li><br>
            
            <a href="adminlogin">
              <i class="fa-sharp fa-solid fa-user-tie"></i>
              <span>Admin Panel</span>
            </a>
          </ul>
        </div>

        <!-- Quick Links Section -->
        <div class="footer-section">
          <h6>Quick Links</h6>
          <ul class="footer-links">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="faq's.jsp">FAQ's</a></li>
            <li><a href="policies.jsp">Privacy Policy</a></li>
            <li><a href="t&c.jsp">Terms and Conditions</a></li>
          </ul>
        </div>
        <div class="footer-section">
          <h6>Social Media</h6>
          <ul class="footer-links">
            <li><a href="#">Instagram <i class="fa-brands fa-instagram"></i></a></li>
            <li><a href="#">Twitter <i class="fa-brands fa-x-twitter"></i></a></li>
            <li><a href="#">Youtube <i class="fa-brands fa-youtube"></i></a></li>
          </ul>
        </div>
      </div>
      <hr>
    </div>
    <div class="container1">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <p class="copyright-text">Copyright &copy; 2024 All Rights Reserved by 
            <a href="/">loksambandh</a>.
          </p>
          <p class="copyright-text">Last updated on 1 December, 2024.</p>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>
