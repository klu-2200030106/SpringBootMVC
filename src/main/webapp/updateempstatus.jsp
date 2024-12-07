<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee Status</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #f8f9fa; /* Light background for the table */
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        th {
            background-color: #007bff; /* Dark blue header */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #d6eaf8; /* Light blue for even rows */
        }

        tr:nth-child(odd) {
            background-color: #f2f2f2; /* Light grey for odd rows */
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        .status {
            font-weight: bold;
            border-radius: 5px;
            padding: 5px;
        }

        .status-accepted {
            color: #fff;
            background-color: #28a745; /* Green background for Accepted status */
        }

        .status-rejected {
            color: #fff;
            background-color: #dc3545; /* Red background for Rejected status */
        }

        .delete-link {
            color: red;
            font-size: 1.5em;
        }

        .delete-link:hover {
            color: darkred;
            text-decoration: none;
        }
        /* Additional CSS for positioning actions in a cross way */
.accept-link {
    position: absolute;
    top: 0;
    left: 0;
}

.reject-link {
    position: absolute;
    bottom: 0;
    right: 0;
}

/* Style for the action links */
.action-container {
    display: flex;
    justify-content: center;
    align-items: center;
}

.action-link {
    padding: 0 5px;
    font-weight: bold;
}

.action-separator {
    padding: 0 5px;
    font-weight: bold;
    color: #6c757d; /* Grey color for the slash */
}

    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <h3 class="text-center"><u>Update Employee Status</u></h3>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>DOB</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>Location</th>
                    <th>Email</th>
                    <th>Contact</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${emplist}" var="emp">
                    <tr>
                        <td><c:out value="${emp.id}"/></td>
                        <td><c:out value="${emp.name}"/></td>
                        <td><c:out value="${emp.gender}"/></td>
                        <td><c:out value="${emp.dateofbirth}"/></td>
                        <td><c:out value="${emp.department}"/></td>
                        <td><c:out value="${emp.salary}"/></td>
                        <td><c:out value="${emp.location}"/></td>
                        <td><c:out value="${emp.email}"/></td>
                        <td><c:out value="${emp.contact}"/></td>
                        <td>
                            <span class="status <c:out value="${emp.status == 'Accepted' ? 'status-accepted' : 'status-rejected'}"/>">
                                <c:out value="${emp.status}"/>
                            </span>
                        </td>
                      <td>
    <div class="action-container">
        <a href='<c:url value="updatestatus?id=${emp.id}&status=Accepted"></c:url>' class="text-success action-link">
            <i class="bi bi-check-circle"></i> Accept
        </a>
        <span class="action-separator">/</span>
        <a href='<c:url value="updatestatus?id=${emp.id}&status=Rejected"></c:url>' class="text-danger action-link">
            <i class="bi bi-x-circle"></i> Reject
        </a>
    </div>
</td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <!-- Bootstrap JS (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
