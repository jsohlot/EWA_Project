<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up - EduPlatform</title>
    <link rel="stylesheet" href="styles.css">
    <!-- Include FontAwesome for icons if not already included -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <!-- JavaScript for form validation -->
    <script>
        function validateForm() {
            // Get form field values
            var password = document.getElementsByName("password")[0].value;
            var repassword = document.getElementsByName("repassword")[0].value;
            var userType = document.getElementsByName("userType")[0].value;

            // Check if passwords match
            if (password !== repassword) {
                alert("Passwords do not match. Please re-enter the same password.");
                return false;
            }

            // Check if userType is selected
            if (userType === "") {
                alert("Please select your role (Student, Faculty, or Admin).");
                return false;
            }

            // If all checks pass, allow the form submission
            return true;
        }
    </script>
</head>
<body>
    <div class="signup-container">
        <h2>Sign Up</h2>
        <!-- Include the validateForm function in the onsubmit attribute of the form -->
        <form action="signupProcess.jsp" method="post" onsubmit="return validateForm();">
            <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" name="username" placeholder="Username" required>
            </div>
            <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" name="email" placeholder="Email" required>
            </div>
            <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="repassword" placeholder="Re-Enter Password" required>
            </div>

            <!-- New Dropdown for User Type -->
            <div class="input-box">
                <i class="fas fa-users"></i>
                <select name="userType" required>
                    <option value="" disabled selected>Select your role</option>
                    <option value="student">Student</option>
                    <option value="faculty">Faculty</option>
                    <option value="admin">Admin</option>
                </select>
            </div>

            <button type="submit" class="btn">Sign Up</button>
        </form>
        <div class="login-link">
            Already have an account? <a href="login.jsp">Login</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
