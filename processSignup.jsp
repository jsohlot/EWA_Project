<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    // Retrieve form data from signup.jsp
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String userType = request.getParameter("userType");

    // Database connection variables (adjust based on your database configuration)
    String url = "jdbc:mysql://localhost:3306/yourDatabase";  // Replace with your database URL
    String dbUser = "yourDatabaseUser";                        // Replace with your database user
    String dbPass = "yourDatabasePassword";                    // Replace with your database password

    try {
        // Load and register JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");  // Ensure this line is correct

        // Establish database connection
        Connection conn = DriverManager.getConnection(url, dbUser, dbPass);

        // SQL query to insert user data
        String sql = "INSERT INTO users (username, email, password, userType) VALUES (?, ?, ?, ?)";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1, username);
        pst.setString(2, email);
        pst.setString(3, password);
        pst.setString(4, userType);

        // Execute the query
        int rowsAffected = pst.executeUpdate();

        if (rowsAffected > 0) {
            out.println("<h3>Signup successful! <a href='login.jsp'>Login here</a></h3>");
        } else {
            out.println("<h3>Signup failed. Please try again.</h3>");
        }

        // Close the connection
        pst.close();
        conn.close();
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    }
%>
