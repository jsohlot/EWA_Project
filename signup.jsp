<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up - EduPlatform</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="signup-container">
        <h2>Sign Up</h2>
        <!-- Updated action to point to processSignup.jsp -->
        <form action="processSignup.jsp" method="post">
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
            <!-- Dropdown for User Type -->
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
