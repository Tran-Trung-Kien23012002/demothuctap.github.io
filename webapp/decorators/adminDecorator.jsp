<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <link rel="stylesheet" type="text/css" href="./style-manage-product-admin.css">
    <!-- Your custom CSS styles can be added here -->
    <style>
        body {
            padding-top: 56px; /* Adjust the value based on your navbar height */
            min-height: 100vh;
            margin: 0; /* Remove default margin to ensure full height */
            display: flex;
            flex-direction: column;
        }

        .admin-content {
            flex: 1; /* Use remaining space for admin-content */
            overflow-y: auto; /* Add scrollbar if content overflows */
        }
    </style>
</head>
<body>

    <%@ include file="/admin-header.jsp" %>
    
    <div class="admin-content">
        <!-- Page Content -->
        <decorator:body />
    </div>
    
    
    <%@ include file="/admin-footer.jsp" %>


<!-- Bootstrap JS and jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
