<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Add Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .message {
            background-color: #e6f7e6;
            border: 1px solid #28a745;
            color: #28a745;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 3px;
        }
        .back-link {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 3px;
            transition: background-color 0.3s;
        }
        .back-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Add Success</h1>
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="addcustomer" class="back-link">Back</a>
    </div>
</body>
</html>