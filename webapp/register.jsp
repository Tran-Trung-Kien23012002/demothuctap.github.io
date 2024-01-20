<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f4f4f4;
            padding-top: 50px; /* Increase top padding */
            padding-bottom: 50px; /* Increase bottom padding */
        }

        .register-container {
            margin-top: 5%;
        }

        .register-form {
            max-width: 400px;
            margin: 0 auto;
        }

        /* Custom styles */
        .form-group {
            margin-bottom: 20px; /* Increase space between form elements */
        }

        /* Adjust width of the button */
        .btn-block {
            width: 100%;
        }

        /* Reduce size of input fields */
        .form-control {
            padding: 10px;
            height: auto;
        }
    </style>
</head>
<body>

<div class="container register-container" style="margin: 50px auto;">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 register-form">
            <h2 class="text-center">Register</h2>
            
            <c:if test="${not empty registrationMessage}">
                <div class="registration-message" style="color: red; font-size: 18px; text-align: center;">
                    ${registrationMessage}
                </div>
            </c:if>

            <form id="registerForm" action="home" method="post">
            	<input type="hidden" name="action" value="register"/>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="fullName">Full Name:</label>
                    <input type="text" class="form-control" id="fullName" name="fullName" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <select class="form-control" id="gender" name="gender">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
                </div>
                <div class="form-group">
                    <label for="birthDate">Birth Date:</label>
                    <input type="date" class="form-control" id="birthDate" name="birthDate" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Register</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
