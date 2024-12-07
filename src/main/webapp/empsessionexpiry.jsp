<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Expiry</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f2f5;
        color: #333;
        text-align: center;
        padding: 50px;
    }
    .container {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        display: inline-block;
        padding: 40px;
        max-width: 400px;
        width: 100%;
    }
    h1 {
        color: #d9534f;
        font-size: 24px;
    }
    p {
        font-size: 16px;
        margin: 20px 0;
    }
    a {
        text-decoration: none;
        color: #fff;
        background-color: #5bc0de;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
    }
    a:hover {
        background-color: #31b0d5;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>OOPS ... !!!</h1>
        <p>Session Expired</p>
        <br>
        <a href="emplogin">Login Again</a>
    </div>
</body>
</html>
