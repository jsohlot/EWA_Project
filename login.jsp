<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - EduPlatform</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="login.jsp" method="post">
            <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" name="email" placeholder="Email" required>
            </div>
            <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit" class="btn">Login</button>
            <div class="quotation">
                "Education is the most powerful weapon which you can use to change the world." - Nelson Mandela
            </div>
        </form>
        <div class="signup-link">
            Don't have an account? <a href="signup.jsp">Sign Up</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
