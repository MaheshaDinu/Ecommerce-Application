<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 20/01/2025
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>

<!-- Navbar -->
<% String currentPage = "product"; %>
<%@ include file="includes/adminNavBar.jsp" %>

<% String saveSuccess = request.getParameter("saveSuccess");%>
<% String saveFail = request.getParameter("saveFail");%>

<!-- Content -->
<div class="container mt-5">
    <h1 class="text-center mb-4">ADMIN</h1>
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h3>Product Management</h3>



    </div>
    <button class="btn btn-success mb-4" data-bs-toggle="modal" data-bs-target="#addProductModal">Add Product</button>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Product Id</th>
            <th>Category</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Stock</th>
            <th>Image</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Electronics</td>
            <td>Laptop</td>
            <td>High-performance laptop</td>
            <td>$1000</td>
            <td>50</td>
            <td><img src="Assets/Images/laptop.png" alt="Laptop" class="table-img"></td>
            <td>
                <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editProductModal" onclick="populateEditModal(1)">Edit</button>
                <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteProductModal" onclick="setDeleteConfirmation(1)">Delete</button>
            </td>
        </tr>
        <!-- More rows can be dynamically added -->
        </tbody>
    </table>
</div>

<!-- Add Product Modal -->
<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addProductModalLabel">Add Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="addProductForm" enctype="multipart/form-data" action="add-product-servlet" method="post">
                    <div class="mb-3">
                        <label for="category" class="form-label">Category</label>
                        <select class="form-select" id="category" name="categoryId" required>

                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="productName" class="form-label">Product Name</label>
                        <input type="text" class="form-control" id="productName" name="productName" required>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="price" class="form-label">Price</label>
                        <input type="number" class="form-control" id="price" name="price" required>
                    </div>
                    <div class="mb-3">
                        <label for="stock" class="form-label">Stock</label>
                        <input type="number" class="form-control" id="stock" name="stock" required>
                    </div>
                    <div class="mb-3">
                        <label for="productImage" class="form-label">Product Image</label>
                        <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Save Product</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Edit Product Modal -->
<div class="modal fade" id="editProductModal" tabindex="-1" aria-labelledby="editProductModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editProductModalLabel">Edit Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="editProductForm">
                    <div class="mb-3">
                        <label for="editCategory" class="form-label">Category</label>
                        <select class="form-select" id="editCategory" required>
                            <option value="" selected disabled>Select a category</option>
                            <option value="electronics">Electronics</option>
                            <option value="appliances">Appliances</option>
                            <option value="clothing">Clothing</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="editProductName" class="form-label">Product Name</label>
                        <input type="text" class="form-control" id="editProductName" required>
                    </div>
                    <div class="mb-3">
                        <label for="editDescription" class="form-label">Description</label>
                        <textarea class="form-control" id="editDescription" rows="3" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="editPrice" class="form-label">Price</label>
                        <input type="number" class="form-control" id="editPrice" required>
                    </div>
                    <div class="mb-3">
                        <label for="editStock" class="form-label">Stock</label>
                        <input type="number" class="form-control" id="editStock" required>
                    </div>
                    <div class="mb-3">
                        <label for="editProductImage" class="form-label">Product Image</label>
                        <input type="file" class="form-control" id="editProductImage" accept="image/*">
                    </div>
                    <button type="submit" class="btn btn-primary">Update Product</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Delete Confirmation Modal -->
<div class="modal fade" id="deleteProductModal" tabindex="-1" aria-labelledby="deleteProductModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteProductModalLabel">Confirm Deletion</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this product?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-danger">Delete</button>
            </div>
        </div>
    </div>
</div>
<% if (saveSuccess != null && !saveSuccess.isEmpty()) { %>
<!-- Success Toast -->
<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
    <div id="successToast" class="toast align-items-center text-bg-success border-0" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="d-flex">
            <div class="toast-body">
                <%= saveSuccess %>
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
    </div>
</div>
<% } else if (saveFail != null && !saveFail.isEmpty()) { %>
<!-- Fail Toast -->
<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
    <div id="failToast" class="toast align-items-center text-bg-danger border-0" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="d-flex">
            <div class="toast-body">
                <%= saveFail %>
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
    </div>
</div>
<% } %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    const contextPath = "<%= request.getContextPath() %>";
    console.log(contextPath); // Add this line to check the contextPath
    $('#addProductModal').on('show.bs.modal', function() {
        $.get(contextPath+'/get-categories-servlet', function(data) {
            console.log(data)
            const categorySelect = $('#category');
            categorySelect.empty(); // Clear any existing options
            categorySelect.append('<option value="" selected disabled>Select a category</option>');

            // Append categories to dropdown
            data.forEach(function(category) {
                categorySelect.append('<option value="' + category.categoryId + '">' + category.name + '</option>');
            });
        });
    });


    function populateEditModal(productId) {
        // Populate the Edit Modal with product details (use AJAX or data from your database)
        document.getElementById('editProductName').value = "Laptop";
        document.getElementById('editDescription').value = "High-performance laptop";
        document.getElementById('editPrice').value = "1000";
        document.getElementById('editStock').value = "50";
        document.getElementById('editCategory').value = "electronics";
    }

    function setDeleteConfirmation(productId) {
        // Set product ID to delete (use AJAX or additional logic if needed)
        console.log("Preparing to delete product with ID: " + productId);
    }

    document.addEventListener("DOMContentLoaded", function () {
        const toastElement = document.getElementById('successToast');
        const toast = new bootstrap.Toast(toastElement, { delay: 10000 }); // 10 seconds delay
        toast.show();
    });
    document.addEventListener("DOMContentLoaded", function () {
        const toastElement = document.getElementById('failToast');
        const toast = new bootstrap.Toast(toastElement, { delay: 10000 }); // 10 seconds delay
        toast.show();
    });
</script>


</body>
</html>
