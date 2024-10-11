<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Recommendation</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="recommendation-container">
        <h2>Get Product Recommendations</h2>
        <form action="processRecommendation.jsp" method="post">
            <div class="input-box">
                <label for="preferences">Enter your preferences or needs:</label>
                <input type="text" id="preferences" name="preferences" placeholder="e.g., I need a laptop for programming" required>
            </div>
            <button type="submit" class="btn">Get Recommendations</button>
        </form>
    </div>
</body>
</html>
