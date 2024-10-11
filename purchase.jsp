<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Purchase Product</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="purchase-container">
        <h2>Purchase Product</h2>
        <form action="orderConfirmation.jsp" method="post">
            <div class="input-box">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>
            <div class="input-box">
                <label for="address">Shipping Address:</label>
                <textarea id="address" name="address" placeholder="Enter your shipping address" required></textarea>
            </div>
            <div class="input-box">
                <label for="payment">Payment Information:</label>
                <input type="text" id="payment" name="payment" placeholder="Enter your payment information" required>
            </div>
            <input type="hidden" name="product" value="<%= request.getParameter("product") %>">
            <button type="submit" class="btn">Complete Purchase</button>
        </form>
    </div>
</body>
</html>
