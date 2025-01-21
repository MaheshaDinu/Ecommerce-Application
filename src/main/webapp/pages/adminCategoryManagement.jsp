<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 20/01/2025
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category Management</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<% String currentPage = "category"; %>
<%@ include file="../includes/adminNavBar.jsp" %>

<!-- Content -->
<div class="container mt-5">
  <h1 class="text-center mb-4">ADMIN</h1>
  <div class="d-flex justify-content-between align-items-center mb-3">
    <h3>Category Management</h3>
    <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addCategoryModal">Add Category</button>
  </div>
  <table class="table table-bordered">
    <thead>
    <tr>
      <th>Category ID</th>
      <th>Name</th>
      <th>Description</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>1</td>
      <td>Electronics</td>
      <td>Electronic gadgets and devices</td>
      <td>
        <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editCategoryModal" onclick="populateEditCategoryModal(1)">Edit</button>
        <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteCategoryModal" onclick="setDeleteCategoryConfirmation(1)">Delete</button>
      </td>
    </tr>
    <!-- More rows can be dynamically added -->
    </tbody>
  </table>
</div>

<!-- Add Category Modal -->
<div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="addCategoryModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addCategoryModalLabel">Add Category</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="addCategoryForm">
          <div class="mb-3">
            <label for="categoryName" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="categoryName" required>
          </div>
          <div class="mb-3">
            <label for="categoryDescription" class="form-label">Description</label>
            <textarea class="form-control" id="categoryDescription" rows="3" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Save Category</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Edit Category Modal -->
<div class="modal fade" id="editCategoryModal" tabindex="-1" aria-labelledby="editCategoryModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editCategoryModalLabel">Edit Category</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="editCategoryForm">
          <div class="mb-3">
            <label for="editCategoryName" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="editCategoryName" required>
          </div>
          <div class="mb-3">
            <label for="editCategoryDescription" class="form-label">Description</label>
            <textarea class="form-control" id="editCategoryDescription" rows="3" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Update Category</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Delete Confirmation Modal -->
<div class="modal fade" id="deleteCategoryModal" tabindex="-1" aria-labelledby="deleteCategoryModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteCategoryModalLabel">Confirm Deletion</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are you sure you want to delete this category?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-danger">Delete</button>
      </div>
    </div>
  </div>
</div>

<script>
  function populateEditCategoryModal(categoryId) {
    // Populate the Edit Modal with category details (use AJAX or data from your database)
    document.getElementById('editCategoryName').value = "Electronics";
    document.getElementById('editCategoryDescription').value = "Electronic gadgets and devices";
  }

  function setDeleteCategoryConfirmation(categoryId) {
    // Set category ID to delete (use AJAX or additional logic if needed)
    console.log("Preparing to delete category with ID: " + categoryId);
  }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
