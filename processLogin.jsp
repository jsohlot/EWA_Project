<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%
    // Retrieve form data from login.jsp
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    // Database connection variables
    String url = "jdbc:mysql://localhost:3306/yourDatabase";  // Replace with your database URL
    String dbUser = "yourDatabaseUser";                        // Replace with your database user
    String dbPass = "yourDatabasePassword";                    // Replace with your database password

    try {
        // Load and register JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish database connection
        Connection conn = DriverManager.getConnection(url, dbUser, dbPass);

        // SQL query to validate login credentials
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1, email);
        pst.setString(2, password);

        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            // Login successful, create a session and redirect to recommendation.jsp
            HttpSession session = request.getSession();
            session.setAttribute("user", rs.getString("username"));
            response.sendRedirect("recommendation.jsp");
        } else {
            // Login failed, show error message
            out.println("<h3>Invalid email or password. Please try again.</h3>");
            out.println("<a href='login.jsp'>Go back to Login</a>");
        }

        // Close the resources
        rs.close();
        pst.close();
        conn.close();
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    }
%>
