<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Update Error</title>
<style>
/* General Page Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    text-align: center;
    padding: 50px;
}

h1 {
    color: #4CAF50;
}

c\:out {
    font-size: 18px;
    color: #333;
    font-weight: bold;
}

/* Link Styles */
a {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 20px;
    font-size: 16px;
    color: white;
    background-color: #007bff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

a:hover {
    background-color: #0056b3;
}

/* Responsive Design */
@media (max-width: 600px) {
    body {
        padding: 20px;
    }
    
    c\:out {
        font-size: 16px;
    }
    
    a {
        width: 100%;
        text-align: center;
    }
}

</style>
</head>
<body>
<c:out value="${message}"></c:out>
<br><br>
<a href="updateemp">Back</a>
</body>
</html>