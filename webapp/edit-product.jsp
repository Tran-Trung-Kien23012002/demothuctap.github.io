<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Product</title>
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4 text-center">Edit Product</h2>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="admin-product?action=edit-product" method="post" enctype="multipart/form-data" class="mb-4">
                <c:set var="oldImageName" value="${product.imageName}" />
				<input type="hidden" name="oldImageName" value="${oldImageName}">
				<input type="hidden" name="productId" value="${product.id }"/>
                
                <div class="mb-3">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="productName" name="productName" value="${product.productName}" required>
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" name="description" rows="3" required>${product.description}</textarea>
                </div>

                <div class="mb-3">
                    <label for="originalPrice" class="form-label">Original Price</label>
                    <input type="number" class="form-control" id="originalPrice" name="originalPrice" value="${product.originalPrice}" required>
                </div>

                <div class="mb-3">
                    <label for="salePrice" class="form-label">Sale Price</label>
                    <input type="number" class="form-control" id="salePrice" name="salePrice" value="${product.salePrice}" required>
                </div>

                <div class="mb-3">
                    <label for="isNew" class="form-label">Is New</label>
                    <select class="form-select" id="isNew" name="isNew" required>
                        <option value="1" ${product.isNew == 1 ? 'selected' : ''}>Yes</option>
                        <option value="0" ${product.isNew == 0 ? 'selected' : ''}>No</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="isSpecial" class="form-label">Is Special</label>
                    <select class="form-select" id="isSpecial" name="isSpecial" required>
                        <option value="1" ${product.isSpecial == 1 ? 'selected' : ''}>Yes</option>
                        <option value="0" ${product.isSpecial == 0 ? 'selected' : ''}>No</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="image" class="form-label">Product Image</label>
                    <input type="file" class="form-control" id="image" name="image" accept="image/*">
                </div>

                <button type="submit" class="btn btn-primary">Save Changes</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
