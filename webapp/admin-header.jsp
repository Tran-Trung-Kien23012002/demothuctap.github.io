<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="admin">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin?action=get-page-customer">Khách hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin?action=get-page-bill">Đơn hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin-product?action=get-page-product">Sản phẩm</a>
                </li>
            </ul>
            
            <!-- Thêm dropdown -->
            <ul class="navbar-nav ms-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Xin chào, 
                        <c:out value="${sessionScope.loggedInUser.fullName}" />
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Xem thông tin</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="home?action=logout">Đăng xuất</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>


