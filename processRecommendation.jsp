<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Recommendations</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="recommendation-container">
        <h2>Recommended Products</h2>
        <%
            // Placeholder recommendation logic based on preferences
            String preferences = request.getParameter("preferences");
            List<String> recommendations = new ArrayList<>();
            
            if (preferences != null && !preferences.isEmpty()) {
                if (preferences.toLowerCase().contains("laptop")) {
                    recommendations.add("Dell XPS 13");
                    recommendations.add("MacBook Pro");
                } else if (preferences.toLowerCase().contains("phone")) {
                    recommendations.add("iPhone 13");
                    recommendations.add("Samsung Galaxy S21");
                } else {
                    recommendations.add("Product 1");
                    recommendations.add("Product 2");
                    recommendations.add("Product 3");
                }
            } else {
                recommendations.add("No recommendations available. Please enter your preferences.");
            }

            // Display the recommended products
            for (String product : recommendations) {
                out.println("<p>" + product + "</p>");
            }
        %>

        <!-- Link to Purchase Page (You can create purchase.jsp next) -->
        <form action="purchase.jsp" method="get">
            <input type="hidden" name="product" value="<%= recommendations.size() > 0 ? recommendations.get(0) : "" %>">
            <button type="submit" class="btn">Proceed to Purchase</button>
        </form>
    </div>
</body>
</html>
