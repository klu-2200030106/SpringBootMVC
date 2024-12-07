<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f0f2f5;
            font-family: 'Poppins', sans-serif;
             background: url('employee.jpg') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
        }
        .form-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        }
        h3 {
            color: #333;
            margin-bottom: 30px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-align: center;
        }
        label {
            font-weight: 400;
            color: #555;
        }
        .form-control {
            border-radius: 8px;
            border: 1px solid #ddd;
            padding: 12px;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }
        .btn {
            border-radius: 8px;
            padding: 12px 20px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.3s ease;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }
        .btn-secondary:hover {
            background-color: #545b62;
            border-color: #545b62;
        }
        .button-container {
            text-align: center;
            margin-top: 30px;
        }
        .button-container .btn {
            margin: 0 10px;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
  
    
    <div class="form-container">
        <h3><u>Employee Login</u></h3>
          <h4 align="center" style="color: red">
  <c:out value="${message}"></c:out>
  </h4>
    
        <form method="post" action="checkemplogin">
            <div class="mb-3">
                <label for="eemail" class="form-label">Enter Email ID</label>
                <input type="email" class="form-control" id="eemail" name="eemail" required>
            </div>
            <div class="mb-3">
                <label for="epwd" class="form-label">Enter Password</label>
                <input type="password" class="form-control" id="epwd" name="epwd" required>
            </div>
            <div class="button-container">
                <button type="submit" class="btn btn-primary">Login</button>
                <button type="reset" class="btn btn-secondary">Clear</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>