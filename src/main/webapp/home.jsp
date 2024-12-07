<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .content {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .centered-list {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 600px;
            width: 100%;
        }
        ol {
            padding-left: 20px;
        }
        li {
            margin-bottom: 15px;
            line-height: 1.6;
            color: #333;
        }
        h2 {
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <div class="content">
        <div class="centered-list">
            <h2>Application Architecture</h2>
            <ol>
                <li>Controller Layer will access Service Layer</li>
                <li>Service Layer will access Repository Layer</li>
                <li>Repository Layer contains Database Logic</li>
            </ol>
        </div>
    </div>
</body>
</html>