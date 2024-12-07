<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
 <title>Add Customer</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style>
/* Reset default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    padding: 20px;
    background: url('cus.png') no-repeat center center fixed;
}

/* Form container styling */
.form-container {
    max-width: 600px;
    margin: 20px auto;
    padding: 30px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

/* Table styling */
table {
    width: 100%;
    border-collapse: collapse;
}

td {
    padding: 12px;
    vertical-align: top;
}

/* Label styling */
label {
    display: block;
    font-weight: bold;
    color: #333;
    margin-bottom: 5px;
}

/* Input field styling */
input[type="text"],
input[type="password"],
input[type="email"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 14px;
    transition: border-color 0.3s ease;
}

input[type="text"]:focus,
input[type="password"]:focus,
input[type="email"]:focus,
textarea:focus {
    border-color: #4CAF50;
    outline: none;
    box-shadow: 0 0 5px rgba(76, 175, 80, 0.2);
}

/* Radio button styling */
input[type="radio"] {
    margin-right: 5px;
    margin-left: 15px;
}

input[type="radio"]:first-of-type {
    margin-left: 0;
}

/* Textarea styling */
textarea {
    height: 100px;
    resize: vertical;
}

/* Button container styling */
.button-container {
    text-align: center;
    padding-top: 20px;
}

/* Button styling */
input[type="submit"],
input[type="reset"] {
    padding: 10px 25px;
    margin: 0 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

input[type="reset"] {
    background-color: #f44336;
    color: white;
}

input[type="reset"]:hover {
    background-color: #da190b;
}

/* Heading styling */
h3 {
    color: #333;
    margin-bottom: 30px;
    font-size: 24px;
    padding-bottom: 10px;
}

h3 u {
    text-decoration-color: #4CAF50;
}

/* Error message styling (if needed) */
.error {
    color: #f44336;
    font-size: 12px;
    margin-top: 5px;
}

/* Responsive design */
@media screen and (max-width: 600px) {
    .form-container {
        padding: 15px;
        margin: 10px;
    }
    
    td {
        display: block;
        padding: 8px;
    }
    
    input[type="submit"],
    input[type="reset"] {
        width: 100%;
        margin: 5px 0;
    }
}
</style>
</head>

<body>
  <%@include file="adminnavbar.jsp" %>
  
    <h3 style="text-align: center;"><u>Add Customer</u></h3>
    <div class="form-container">

<form:form modelAttribute="customer" method="post" action="insertcustomer">

<table>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>
<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>
<tr>
<td><label>Email ID</label></td>
<td><form:input path="email" required="required"/></td>
</tr>
<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>
<tr>
<td><label>Address</label></td>
<td>
<form:textarea path="address" required="required"/>
</td>
</tr>
<tr>
<td><label>Contact No</label></td>
<td><form:input path="contactno" required="required"/></td>
</tr>
<tr>
<td colspan="2" class="button-container">
<input type="submit" value="Add"/>
<input type="reset" value="Clear"/>
</td>
</tr>
</table>
</form:form>


</div>
</body>
</html>

 
