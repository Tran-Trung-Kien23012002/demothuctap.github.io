<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="header">
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-5">
				    <c:choose>
				        <c:when test="${not empty sessionScope.cart}">
				            <div class="shopping-item">
				                <a href="cart?action=get-page-cart">
				                    Cart - <span class="cart-amunt">${sessionScope.totalPrice} ₫</span>
				                    <i class="fa fa-shopping-cart"></i>
				                    <span class="product-count">${sessionScope.totalQuantity}</span>
				                </a>
				            </div>
				        </c:when>
				        <c:otherwise>
            	            <div class="shopping-item">
				                <a href="cart?action=get-page-cart">
				                    Cart
				                    <i class="fa fa-shopping-cart"></i>
				                </a>
				            </div>
				        </c:otherwise>
				    </c:choose>
				</div>
				<div class="col-sm-2">
				<div class="user-menu" style="padding-top: 40px;">
				        <c:choose>
				            <c:when test="${empty sessionScope.loggedInUser}">
				                <!-- User is not logged in -->
				                <ul>
				                    <li><a href="home?action=get-page-login"><i class="fa fa-user"></i> Login</a></li>
				                </ul>
				            </c:when>
				            <c:otherwise>
				                <!-- User is logged in -->
				                <div style="padding-top: 10px" class="dropdown">
				                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="position: relative;">
				                        <i class="fa fa-user"></i> Chào ${sessionScope.loggedInUser.fullName} <b class="caret"></b>
				                    </a>
				                    <ul class="dropdown-menu" style="position: absolute; width: 100px;">
				                        <!-- Add your dropdown items here -->
				                        <li><a href="bill?action=get-page-my-bill">Đơn hàng</a></li>
				                        <li><a href="#">Thông tin</a></li>
				                        <li class="divider"></li>
				                        <li><a href="home?action=logout">Đăng xuất</a></li>
				                    </ul>
				                </div>
				            </c:otherwise>
				        </c:choose>
				    </div>
				</div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="home">Home</a></li>
                        <li><a href="home?action=get-shop-page">Shop page</a></li>
                        <li><a href="#">Category</a></li>
                        <li><a href="#">Others</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
</div>