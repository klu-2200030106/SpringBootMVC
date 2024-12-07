<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f2f5;
        }
        h2 {
            text-align: center;
            color: #333;
            padding: 20px 0;
            margin: 0;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .navbar {
            background-color: #007bff;
            padding: 10px 0;
            text-align: center;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            display: inline-block;
            transition: background-color 0.3s;
            font-weight: 500;
        }
        .navbar a:hover {
            background-color: #0056b3;
        }
        @media (max-width: 768px) {
            .navbar {
                display: flex;
                flex-direction: column;
            }
            .navbar a {
                display: block;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <h2>Spring Boot MVC SDP Project</h2>
    <div class="navbar">
        <a href="adminhome">Home</a>
        <a href="viewallemps">View All Employees</a>
        <a href="deleteemp">Delete Employee</a>
         <a href="updateempstatus">Update Employee Status</a>
         <a href="viewempbyid">View Employee By Id</a>
         <a href="addcustomer">Add Customer</a>
        <a href="adminlogout">Logout</a>
    </div>
</body>
</html>