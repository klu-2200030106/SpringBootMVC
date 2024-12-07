<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- viewempbyid.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>View Employee by ID</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-top: 30px;
        }

        form {
            max-width: 400px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
            color: #555;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: blue;
        }

        h3 {
            color: #333;
            text-align: center;
        }

        p {
            font-size: 16px;
            color: #555;
            text-align: center;
        }

        p.error {
            color: red;
            font-weight: bold;
        }

        /* Employee details container */
        .employee-details {
            max-width: 400px;
            margin: 20px auto;
            padding: 15px;
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
    </style>
</head>
<body>
 <%@ include file="adminnavbar.jsp" %>
    <h2><u>Find Employee by ID</u></h2>
    <form action="viewempid" method="GET">
        <label for="empid">Enter Employee ID:</label>
        <input type="number" id="empid" name="id" required>
        <button type="submit">Find</button>
    </form>

    <!-- Display employee details if available -->
    <c:if test="${not empty employee}">
        <div class="employee-details">
            <h3>Employee Details:</h3>
            <p>ID: ${employee.id}</p>
            <p>Name: ${employee.name}</p>
            <p>Gender: ${employee.gender}</p>
            <p>Email: ${employee.email}</p>
        </div>
    </c:if>

    <!-- Display an error message if employee not found -->
    <c:if test="${not empty message}">
        <p class="error">${message}</p>
    </c:if>
</body>
</html>
