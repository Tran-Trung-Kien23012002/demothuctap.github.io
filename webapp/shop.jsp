<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>



<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <%-- Sử dụng forEach để lặp qua danh sách sản phẩm --%>
            <c:forEach var="product" items="${productList}">
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                        <div class="product-upper">
                            <%-- Hiển thị hình ảnh sản phẩm --%>
                            <img src="<c:out value="img/${product.imageName}"/>" alt="">
                        </div>
                        <h2><a href="product?action=get-page-product-detail&productId=${product.id}"><c:out value="${product.productName}"/></a></h2>
                        <div class="product-carousel-price">
                            <%-- Hiển thị giá bán khuyến mãi và giá gốc --%>
                            <ins><c:out value="${product.salePrice}"/> VND</ins> <del><c:out value="${product.originalPrice}"/> VND</del>
                        </div>

                        <div class="product-option-shop">
                            <a class="add_to_cart_button" href="cart?action=add-cart&productId=${product.id }">Add to cart</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="row">
		    <div class="col-md-12">
		        <div class="product-pagination text-center">
		            <nav>
		                <ul class="pagination">
		                    <c:if test="${currentPage > 1}">
		                        <li>
		                            <a href="?action=get-shop-page&page=1" aria-label="First">
		                                <span aria-hidden="true">&laquo;&laquo;</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="?action=get-shop-page&page=${currentPage - 1}" aria-label="Previous">
		                                <span aria-hidden="true">&laquo;</span>
		                            </a>
		                        </li>
		                    </c:if>
		
		                    <c:forEach begin="1" end="${totalPages}" var="page">
		                        <li class="${page == currentPage ? 'active' : ''}">
		                            <a href="?action=get-shop-page&page=${page}">${page}</a>
		                        </li>
		                    </c:forEach>
		
		                    <c:if test="${currentPage < totalPages}">
		                        <li>
		                            <a href="?action=get-shop-page&page=${currentPage + 1}" aria-label="Next">
		                                <span aria-hidden="true">&raquo;</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="?action=get-shop-page&page=${totalPages}" aria-label="Last">
		                                <span aria-hidden="true">&raquo;&raquo;</span>
		                            </a>
		                        </li>
		                    </c:if>
		                </ul>
		            </nav>
		        </div>
		    </div>
		</div>
    </div>
</div>

</body>
</html>
