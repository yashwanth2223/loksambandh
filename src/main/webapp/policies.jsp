<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Privacy Policy - Citizen-Politician Portal</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: #2c3e50;
            padding: 20px;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.5em;
            position: relative;
        }

        h1:after {
            content: '';
            display: block;
            width: 100px;
            height: 3px;
            background: #3498db;
            margin: 10px auto;
        }

        h2 {
            color: #3498db;
            margin: 25px 0 15px;
            font-size: 1.5em;
        }

        p {
            margin-bottom: 15px;
            text-align: justify;
        }

        .section {
            margin-bottom: 30px;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 8px;
        }

        ul {
            margin-left: 20px;
            margin-bottom: 15px;
        }

        li {
            margin-bottom: 10px;
        }

        .important-notice {
            background: #e8f4f8;
            padding: 15px;
            border-left: 4px solid #3498db;
            margin: 15px 0;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s ease;
            padding: 10px 20px;
            background: #f8f9fa;
            border-radius: 5px;
        }

        .back-link:hover {
            background: #e8f4f8;
            transform: translateX(-5px);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Privacy Policy</h1>
        
        <div class="section">
            <h2>Information We Collect</h2>
            <p>We collect the following information to provide and improve our services:</p>
            <ul>
                <li>Name and contact information</li>
                <li>Constituency details</li>
                <li>Issue reports and related media</li>
                <li>Communication history between citizens and politicians</li>
            </ul>
        </div>

        <div class="section">
            <h2>How We Use Your Information</h2>
            <div class="important-notice">
                <p>Your information is used for:</p>
                <ul>
                    <li>Facilitating communication between citizens and politicians</li>
                    <li>Verifying user identity and eligibility</li>
                    <li>Improving platform functionality and user experience</li>
                    <li>Generating anonymous statistics for platform improvement</li>
                </ul>
            </div>
        </div>

        <div class="section">
            <h2>Data Protection</h2>
            <p>We implement various security measures to protect your personal information:</p>
            <ul>
                <li>Encrypted data transmission</li>
                <li>Secure server storage</li>
                <li>Regular security audits</li>
                <li>Access controls and authentication</li>
            </ul>
        </div>

        <div class="section">
            <h2>Your Rights</h2>
            <p>You have the right to:</p>
            <ul>
                <li>Access your personal data</li>
                <li>Request corrections to your data</li>
                <li>Request deletion of your data</li>
                <li>Opt-out of non-essential communications</li>
            </ul>
        </div>

        <a href="/" class="back-link">← Back to Home</a>
    </div>
</body>
</html>