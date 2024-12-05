<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>FAQs - Citizen-Politician Portal</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            background: #f0f2f5;
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
            margin-bottom: 40px;
            font-size: 2.5em;
        }

        .faq-item {
            margin-bottom: 20px;
            border-bottom: 1px solid #eee;
            padding-bottom: 20px;
        }

        .faq-question {
            font-size: 1.2em;
            color: #3498db;
            margin-bottom: 10px;
            font-weight: 600;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .faq-question:hover {
            color: #2980b9;
        }

        .faq-answer {
            padding: 15px;
            background: #f8f9fa;
            border-radius: 5px;
            margin-top: 10px;
        }

        .faq-section {
            margin-bottom: 40px;
        }

        .section-title {
            color: #2c3e50;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #3498db;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 20px;
            background: #f8f9fa;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            background: #e8f4f8;
            transform: translateX(-5px);
        }

        .search-box {
            width: 100%;
            padding: 15px;
            margin-bottom: 30px;
            border: 2px solid #eee;
            border-radius: 5px;
            font-size: 1em;
        }

        .search-box:focus {
            outline: none;
            border-color: #3498db;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        
        <input type="text" class="search-box" placeholder="Search FAQs...">

        <div class="faq-section">
            <h2 class="section-title">General Questions</h2>
            
            <div class="faq-item">
                <div class="faq-question">What is  loksambandh?</div>
                <div class="faq-answer">
                    loksambandh is a platform that facilitates direct communication between citizens and their elected representatives. It allows citizens to report community issues and engage with politicians for solutions.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-question">How do I register on the platform?</div>
                <div class="faq-answer">
                    Registration is simple! Click on the "Register" button on the homepage, fill in the required information, and verify your account.
                </div>
            </div>
        </div>

        <div class="faq-section">
            <h2 class="section-title">For Citizens</h2>
            
            <div class="faq-item">
                <div class="faq-question">How do I report a problem?</div>
                <div class="faq-answer">
                    After logging in, click on "Post Problem," fill in the details of your issue, attach any relevant images, and submit. Your problem will be directed to the appropriate politician based on your constituency.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-question">How can I track the status of my reported problem?</div>
                <div class="faq-answer">
                    You can view all your reported problems and their current status in your dashboard. Each problem will show its current stage of resolution and any updates from the politician.
                </div>
            </div>
        </div>

        <div class="faq-section">
            <h2 class="section-title">For Politicians</h2>
            
            <div class="faq-item">
                <div class="faq-question">How do I respond to citizen problems?</div>
                <div class="faq-answer">
                    From your dashboard, you can view all reported problems in your constituency. Click on any problem to view details and post updates or responses to the concerned citizen.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-question">Can I post updates about constituency development?</div>
                
                                <div class="faq-answer">
                    Yes, politicians can post updates regarding constituency development by logging into their dashboard and accessing the "Development Updates" section. There, you can add new updates, attach relevant documents, and communicate with the citizens regarding ongoing or completed development projects.
                </div>
            </div>
        </div>

        <div class="faq-section">
            <h2 class="section-title">Technical Support</h2>
            
            <div class="faq-item">
                <div class="faq-question">I am facing issues with logging in. What should I do?</div>
                <div class="faq-answer">
                    If you are having trouble logging in, make sure you're using the correct username and password. If you've forgotten your password, click on the "Forgot Password" link to reset it. If the issue persists, contact our support team for assistance.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-question">What should I do if I encounter a bug or technical issue?</div>
                <div class="faq-answer">
                    If you encounter any bugs or technical issues, please report them through the "Contact Support" section on your dashboard. Our technical team will investigate and resolve the issue as soon as possible.
                </div>
            </div>
        </div>

        <a href="/" class="back-link">Back to Homepage</a>
    </div>
  <script>
    // Select the search box and all FAQ items
    const searchBox = document.querySelector('.search-box');
    const faqItems = document.querySelectorAll('.faq-item');

    // Add an event listener to the search box to detect input changes
    searchBox.addEventListener('input', (e) => {
        // Get the search term entered by the user, and convert it to lowercase
        const searchTerm = e.target.value.toLowerCase();

        // Loop through all FAQ items
        faqItems.forEach((item) => {
            // Get the question and answer elements
            const questionElement = item.querySelector('.faq-question');
            const answerElement = item.querySelector('.faq-answer');

            // Get the text content of the question and answer
            const questionText = questionElement.textContent;
            const answerText = answerElement.textContent;

            // Check if the search term is present in the question or answer
            if (questionText.toLowerCase().includes(searchTerm) || answerText.toLowerCase().includes(searchTerm)) {
                // Show the item if it matches
                item.style.display = '';

                // Highlight the matching text in the question
                questionElement.innerHTML = highlightText(questionText, searchTerm);

                // Highlight the matching text in the answer
                answerElement.innerHTML = highlightText(answerText, searchTerm);
            } else {
                // Hide the item if it does not match
                item.style.display = 'none';

                // Reset the innerHTML to remove any previous highlighting
                questionElement.innerHTML = questionText;
                answerElement.innerHTML = answerText;
            }
        });
    });

    /**
     * Highlights the matching text in the content.
     * @param {string} content - The original text.
     * @param {string} searchTerm - The term to highlight.
     * @returns {string} - The HTML string with highlighted text.
     */
    function highlightText(content, searchTerm) {
        if (!searchTerm) return content; // If no search term, return original content
        const regex = new RegExp(`(${searchTerm})`, 'gi'); // Create a regex to match the search term
        return content.replace(regex, '<span style="background-color: yellow;">$1</span>'); // Wrap matches with a span
    }
</script>

    
</body>
</html>
                
               