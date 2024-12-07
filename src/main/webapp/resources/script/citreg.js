document.addEventListener("DOMContentLoaded", function () {
    const dobField = document.getElementById("cdob");
    const passwordField = document.getElementById("cpwd");
    const emailField = document.getElementById("cemail");
    const contactField = document.getElementById("ccontactno");
    const form = document.querySelector("form");

    // Add event listener to the form submission
    form.addEventListener("submit", function (event) {
        let isValid = true;

        // Validate Date of Birth
        const dob = new Date(dobField.value);
        const today = new Date();
        if (!dob || dob >= today) {
            showError(dobField, "Date of Birth must be a past date.");
            isValid = false;
        } else {
            clearError(dobField);
        }

        // Validate Password
        const password = passwordField.value;
        const passwordRegex = /^(?=.*[A-Z])(?=.*\d).{8,}$/; // At least 1 uppercase, 1 digit, min 8 characters
        if (!passwordRegex.test(password)) {
            showError(
                passwordField,
                "Password must have at least 8 characters, 1 uppercase letter, and 1 digit."
            );
            isValid = false;
        } else {
            clearError(passwordField);
        }

        // Validate Email
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(emailField.value)) {
            showError(emailField, "Enter a valid email address.");
            isValid = false;
        } else {
            clearError(emailField);
        }

        // Validate Contact Number
        const contactRegex = /^\d{10}$/; // Exactly 10 digits
        if (!contactRegex.test(contactField.value)) {
            showError(contactField, "Contact number must be a valid 10-digit number.");
            isValid = false;
        } else {
            clearError(contactField);
        }

        // Validate Aadhar Number
        const aadharField = document.getElementById("caadharnumber");
        const aadharRegex = /^\d{12}$/; // Exactly 12 digits
        if (!aadharRegex.test(aadharField.value)) {
            showError(aadharField, "Aadhar number must be a valid 12-digit number.");
            isValid = false;
        } else {
            clearError(aadharField);
        }

        // Prevent form submission if any validation fails
        if (!isValid) {
            event.preventDefault();
        }
    });

    // Show error message
    function showError(inputField, message) {
        let errorElement = inputField.nextElementSibling;

        if (!errorElement || !errorElement.classList.contains("error-message")) {
            errorElement = document.createElement("span");
            errorElement.className = "error-message";
            errorElement.style.color = "red";
            errorElement.style.fontSize = "12px";
            inputField.parentNode.appendChild(errorElement);
        }

        errorElement.textContent = message;
        inputField.style.border = "1px solid red";
    }

    // Clear error message
    function clearError(inputField) {
        let errorElement = inputField.nextElementSibling;
        if (errorElement && errorElement.classList.contains("error-message")) {
            errorElement.textContent = "";
        }
        inputField.style.border = "1px solid #ccc";
    }
});
