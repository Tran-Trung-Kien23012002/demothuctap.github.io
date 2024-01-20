<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage Products</title>
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Manage Products</h2>
    
    <a href="admin-product?action=get-page-add-product" class="btn btn-primary add-product-btn">Add Product</a>

    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>Image Name</th>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Description</th>
                <th>Original Price</th>
                <th>Sale Price</th>
                <th>Is New</th>
                <th>Is Special</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${productList}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td><img class="img-product-manage" src="img/${product.imageName}"></td>
                    <td>${product.id}</td>
                    <td>${product.productName}</td>
                    <td>${product.description}</td>
                    <td>${product.originalPrice}</td>
                    <td>${product.salePrice}</td>
                    <td>${product.isNew}</td>
                    <td>${product.isSpecial}</td>
                    <td>
                        <a href="admin-product?action=get-page-edit-product&productId=${product.id }" title="Edit"><i class="fas fa-pencil-alt"></i></a>
                        <a href="admin-product?action=delete-product&productId=${product.id }" title="Delete"><i style="margin-left: 8px;" class="fas fa-trash"></i></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Pagination -->
	<div class="pagination">
	    <c:url value="/admin-product?action=get-page-product" var="prevPageURL">
	        <c:param name="page" value="${currentPage - 1}" />
	    </c:url>
	    <c:if test="${currentPage > 1}">
	        <a href="${prevPageURL}" class="prev">&laquo; Previous</a>
	    </c:if>
	
	    <c:forEach var="pageNum" begin="1" end="${totalPages}">
	        <c:url value="/admin-product?action=get-page-product" var="pageURL">
	            <c:param name="page" value="${pageNum}" />
	        </c:url>
	        <c:choose>
	            <c:when test="${pageNum eq currentPage}">
	                <a href="${pageURL}" class="active">${pageNum}</a>
	            </c:when>
	            <c:otherwise>
	                <a href="${pageURL}">${pageNum}</a>
	            </c:otherwise>
	        </c:choose>
	    </c:forEach>
	
	    <c:url value="/admin-product?action=get-page-product" var="nextPageURL">
	        <c:param name="page" value="${currentPage + 1}" />
	    </c:url>
	    <c:if test="${currentPage < totalPages}">
	        <a href="${nextPageURL}" class="next">Next &raquo;</a>
	    </c:if>
	</div>

</div>

</body>
</html>
