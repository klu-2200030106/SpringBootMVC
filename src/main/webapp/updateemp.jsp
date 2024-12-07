<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <style>
    /* General Page Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

h3, h4 {
    color: #333;
}

h3 {
    margin-bottom: 20px;
}

h4 {
    color: red;
}

/* Form Container Styles */
.form-container {
    max-width: 600px;
    margin: 40px auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

form {
    width: 100%;
}

table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0 10px;
}

/* Form Label and Input Styles */
label {
    font-size: 16px;
    font-weight: bold;
    color: #555;
}

input[type="text"], input[type="number"], input[type="email"], input[type="password"], input[type="date"], select {
    width: 100%;
    padding: 8px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 14px;
    color: #333;
    background-color: #f9f9f9;
}

input[type="radio"] {
    margin-right: 5px;
}

input[readonly] {
    background-color: #e9ecef;
}

/* Button Styles */
.button-container {
    text-align: center;
    margin-top: 20px;
}

input[type="submit"], input[type="reset"] {
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 4px;
    margin: 5px;
    cursor: pointer;
    background-color: #007bff;
    color: white;
}

input[type="submit"]:hover, input[type="reset"]:hover {
    background-color: #0056b3;
}

/* Responsive Design */
@media (max-width: 600px) {
    .form-container {
        padding: 15px;
    }

    table {
        font-size: 14px;
    }

    input[type="submit"], input[type="reset"] {
        width: 100%;
        margin-bottom: 10px;
    }
}
    </style>
</head>
<body>
  <%@include file="empnavbar.jsp" %>
  
   <h4 align="center" style="color:red">
  <c:out value="${message}"></c:out>
  </h4>
  
    <h3 style="text-align: center;"><u>Update Employee Profile</u></h3>
    <div class="form-container">
        <form method="post" action="updateempprofile">
            <table>
                <tr>
                    <td><label for="eid">Employee ID</label></td>
                    <td><input type="number" id="eid" name="eid" readonly value="<%= emp.getId() %>" required/></td>
                </tr>
               <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" value="<%= emp.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="egender" value="MALE" <%= emp.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" <%= emp.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" <%= emp.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" value="<%= emp.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL" <%= emp.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>Technical</option>
                            <option value="MARKETING" <%= emp.getDepartment().equals("MARKETING") ? "selected" : "" %>>Marketing</option>
                            <option value="SALES" <%= emp.getDepartment().equals("SALES") ? "selected" : "" %>>Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.01" value="<%= emp.getSalary() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" value="<%= emp.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" readonly value="<%= emp.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" value="<%= emp.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" value="<%= emp.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
