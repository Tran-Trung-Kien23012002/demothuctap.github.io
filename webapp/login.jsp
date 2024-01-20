<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f4f4f4;
            padding-top: 50px; /* Increase top padding */
            padding-bottom: 50px; /* Increase bottom padding */
        }

        .login-container {
            margin-top: 5%;
        }

        .login-form {
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

        /* Error message style */
        .error-message {
            color: #ff0000; /* Red color */
            margin-top: -20px; /* Adjust margin to move close to form elements */
            margin-bottom: 20px; /* Add margin at the bottom */
        }

        /* Register link style */
        .register-link {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container login-container" style="margin: 50px auto;">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 login-form">
            <h2 class="text-center">Login</h2>
            
            <c:if test="${not empty errorMessage}">
                <div class="error-message">
                    ${errorMessage}
                </div>
            </c:if>
            
            <form id="loginForm" action="home?action=login" method="post">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                </div>
            </form>
            
            <div class="register-link">
                <c:choose>
                    <c:when test="${empty sessionScope.loggedInUser}">
                        <!-- User is not logged in -->
                        <p>Bạn chưa có tài khoản? <a href="home?action=get-page-register">Đăng ký ở đây</a></p>
                    </c:when>
                    <c:otherwise>
                        <!-- User is logged in -->
                        <p>Already logged in.</p>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- jQuery to submit the form on Enter key press -->
<script>
    $(document).ready(function () {
        $('#loginForm').keypress(function (e) {
            if (e.which === 13) {
                $('#loginForm').submit();
            }
        });
    });
</script>

</body>
</html>
