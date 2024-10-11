<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="order-confirmation-container">
        <h2>Order Confirmation</h2>
        <%
            // Retrieve submitted details
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String payment = request.getParameter("payment");
            String product = request.getParameter("product");

            // Generate a random order number for the sake of demonstration
            String orderNumber = "ORD" + (int)(Math.random() * 10000);

            // Display the order details
            out.println("<p>Thank you, " + name + "!</p>");
            out.println("<p>Your order for the product: <b>" + product + "</b> has been placed successfully.</p>");
            out.println("<p>Shipping Address: " + address + "</p>");
            out.println("<p>Order Number: <b>" + orderNumber + "</b></p>");
        %>
        <p><a href="recommendation.jsp">Go back to Recommendations</a></p>
    </div>
</body>
</html>
