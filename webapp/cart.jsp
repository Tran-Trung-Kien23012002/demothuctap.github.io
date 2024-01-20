<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <!-- Bootstrap CSS -->
    <!-- Custom CSS -->
    <style>
        /* Your custom styles go here */
        .cart-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .product-info {
            display: flex;
            align-items: center;
        }

        .product-image {
            margin-right: 10px;
            max-width: 50px; /* Adjust the max-width as needed */
        }

        .quantity-input {
            display: flex;
            align-items: center;
        }

        .quantity-input input {
            width: 50px; /* Điều chỉnh chiều rộng của ô input */
            margin: 0 5px;
            text-align: center;
        }

        .quantity-input button {
            margin: 0 5px;
        }

        .delete-icon {
            color: red;
            cursor: pointer;
        }		
        
        .hide-if-not-logged-in {
	        display: none;
	    }
    </style>
</head>
<body>

<div class="container" style="margin: 50px auto;">
    <h2 style="text-align: center; margin-bottom: 50px;">Your Shopping Cart</h2>
    
    <c:if test="${not empty requestScope.thongBao}">
	    <div class="alert alert-info">
	        ${requestScope.thongBao}
	    </div>
	</c:if>
    
    <c:choose>
        <c:when test="${empty sessionScope.cart}">
            <p>Your cart is empty.</p>
        </c:when>
        <c:otherwise>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="itemCart" items="${sessionScope.cart}">
                        <tr>
                            <td class="product-info" style="align-content: center">
                                <img class="product-image" style="width: 80px; height: 110px;" src="img/${itemCart.value.product.imageName}" alt="Product Image">
                            </td>
                            <td style="width: 250px; text-align: center">${itemCart.value.product.productName}</td>
                            <td style="width: 200px;">
	                             <form action="cart" method="post" class="quantity-input">
		                             <div class="quantity-input" style="display: flex; gap: 1px; align-items: center;">
		                                 <input type="hidden" name="action" value="edit-cart">
		                                 <input type="hidden" name="productId" value="${itemCart.key}">
		                                <button type="button" onclick="decreaseQuantity(this)" style="background-color: transparent; border: none;">
								            <i style="color: black;" class="glyphicon glyphicon-minus"></i>
								        </button>
								        
								        <input type="number" name="quantity" style="width: 60px" value="${itemCart.value.quanty}" min="1" max="100" class="form-control">
								        
								        <button type="button" onclick="increaseQuantity(this)" style="background-color: transparent; border: none;">
								            <i style="color: black;" class="glyphicon glyphicon-plus"></i>
								        </button>
		                             </div>
	                             </form>
                            </td>
                            <td>${itemCart.value.product.salePrice} VNĐ</td>
                            <td>${itemCart.value.totalPrice} VNĐ</td>
                            <td class="delete-icon">
                                <a href="cart?action=delete-cart&productId=${itemCart.key}">
                                    <span class="glyphicon glyphicon-trash"></span>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="cart-infor" style="font-size: 18px; font-weight: 600; float: right">
                <p>Number Item: ${sessionScope.totalQuantity}</p>
                <p>Total Price: ${sessionScope.totalPrice} VNĐ</p>
                <button id="orderButton" type="button" class="btn btn-primary hide-if-not-logged-in">Đặt hàng</button>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<script>
    function decreaseQuantity(button) {
        var input = button.nextElementSibling;
        if (input.value > 1) {
            input.value = parseInt(input.value) - 1;
        }
        // Gọi hàm submit() cho form
        button.closest('form').submit();
    }

    function increaseQuantity(button) {
        var input = button.previousElementSibling;
        input.value = parseInt(input.value) + 1;
        // Gọi hàm submit() cho form
        button.closest('form').submit();
    }

    // Hàm xử lý submit form
    function updateCart(form) {
        // Thực hiện các xử lý cần thiết trước khi submit form (nếu có)
        return true; // Trả về true để tiếp tục submit form, hoặc false để ngăn chặn submit form
    }
    
    // hàm kiểm tra đăng nhập và gọi request đặt hàng
    document.getElementById('orderButton').addEventListener('click', function () {
        // Check if the cart is empty
        var isCartEmpty = ${empty sessionScope.cart};

        if (isCartEmpty) {
            alert('Your cart is empty.');
        } else {
            // Check if the user is logged in before redirecting
            var isLoggedIn = ${not empty sessionScope.loggedInUser};

            if (!isLoggedIn) {
                window.location.href = 'login.jsp';
            } else {
                // Redirect to the order page
                window.location.href = 'cart?action=order';
            }
        }
    });
</script>
</body>
</html>
