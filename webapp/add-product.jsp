<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add New Product</title>
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4 text-center">Add New Product</h2>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="admin-product?action=add-product" method="post" enctype="multipart/form-data" class="mb-4">
                <div class="mb-3">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="productName" name="productName" required>
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                </div>

                <div class="mb-3">
                    <label for="originalPrice" class="form-label">Original Price</label>
                    <input type="number" class="form-control" id="originalPrice" name="originalPrice" required>
                </div>

                <div class="mb-3">
                    <label for="salePrice" class="form-label">Sale Price</label>
                    <input type="number" class="form-control" id="salePrice" name="salePrice" required>
                </div>

                <div class="mb-3">
                    <label for="isNew" class="form-label">Is New</label>
                    <select class="form-select" id="isNew" name="isNew" required>
                        <option value="1">Yes</option>
                        <option value="0">No</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="isSpecial" class="form-label">Is Special</label>
                    <select class="form-select" id="isSpecial" name="isSpecial" required>
                        <option value="1">Yes</option>
                        <option value="0">No</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="image" class="form-label">Product Image</label>
                    <input type="file" class="form-control" id="image" name="image" accept="image/*" required>
                </div>

                <button type="submit" class="btn btn-primary">Add Product</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
