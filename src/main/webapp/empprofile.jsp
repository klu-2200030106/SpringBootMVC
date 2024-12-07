<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
<meta charset="UTF-8">
<title>Employee Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        color: #333;
        margin: 0;
        padding: 20px;
    }

    h3 {
        text-align: center;
        text-decoration: underline;
        color: black; /* Bootstrap primary color */
        margin-bottom: 30px;
    }

    .profile-container {
        max-width: 600px;
        margin: auto;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .profile-container b {
        display: inline-block;
        width: 150px; /* Fixed width for labels */
    }

    .profile-container div {
        margin-bottom: 15px;
    }

    .profile-container b:hover {
        color: #007BFF; /* Change color on hover */
        cursor: pointer;
    }
</style>
</head>
<body>
<%@include file="empnavbar.jsp" %>

<div class="profile-container">
    <h3>My Profile</h3>
    <div>
        <b>ID:</b> <%= emp.getId() %>
    </div>
    <div>
        <b>NAME:</b> <%= emp.getName() %>
    </div>
    <div>
        <b>GENDER:</b> <%= emp.getGender() %>
    </div>
    <div>
        <b>DATE OF BIRTH:</b> <%= emp.getDateofbirth() %>
    </div>
    <div>
        <b>DEPARTMENT:</b> <%= emp.getDepartment() %>
    </div>
    <div>
        <b>SALARY:</b> <%= emp.getSalary() %>
    </div>
    <div>
        <b>LOCATION:</b> <%= emp.getLocation() %>
    </div>
    <div>
        <b>EMAIL:</b> <%= emp.getEmail() %>
    </div>
    <div>
        <b>CONTACT:</b> <%= emp.getContact() %>
    </div>
</div>

</body>
</html>
