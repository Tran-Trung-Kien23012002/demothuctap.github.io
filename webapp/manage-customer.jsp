<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage Customers</title>
    <!-- Add your custom CSS styles here if needed -->
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Manage Customers</h2>

    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>User ID</th>
                <th>Email</th>
                <th>Password</th>
                <th>Full Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Birth Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="customer" items="${customerList}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${customer.id}</td>
                    <td>${customer.email}</td>
                    <td>${customer.password}</td>
                    <td>${customer.fullName}</td>
                    <td>${customer.gender}</td>
                    <td>${customer.address}</td>
                    <td>${customer.birthDate}</td>
                    <td>
                        <a href="#" title="Edit"><i class="fas fa-pencil-alt"></i></a>
                        <a href="#" title="Delete"><i class="fas fa-trash"></i></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
