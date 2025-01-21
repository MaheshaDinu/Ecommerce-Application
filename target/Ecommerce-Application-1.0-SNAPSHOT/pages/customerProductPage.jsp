<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 21/01/2025
  Time: 09:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>UniShop Zone - Products</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .product-card {
      transition: transform 0.3s;
      margin-bottom: 20px;
    }
    .product-card:hover {
      transform: translateY(-5px);
    }
    .category-sidebar {
      background-color: #f8f9fa;
      padding: 15px;
      border-radius: 8px;
    }
    .search-container {
      margin: 20px 0;
    }
    .sort-container {
      display: flex;
      align-items: center;
      gap: 10px;
    }
  </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-white shadow-sm">
  <div class="container">
    <a class="navbar-brand" href="#">
      <img src="Assets/Images/UnishopZone%20Background%20removed.png" alt="UniShopZone" style="height: 50px;">
      UniShopZone
    </a>

    <div class="d-flex gap-3">
      <a href="cart.jsp" class="btn btn-outline-primary">Cart</a>
      <a href="order-history.jsp" class="btn btn-outline-primary">Order History</a>
      <a href="profile.jsp" class="btn btn-outline-primary">User Profile</a>
    </div>
  </div>
</nav>

<div class="container mt-4">
  <div class="row">
    <!-- Category Sidebar -->
    <div class="col-md-3">
      <div class="category-sidebar">
        <h5>Categories</h5>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="category" id="all" checked>
          <label class="form-check-label" for="all">All Products</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="category" id="electronics">
          <label class="form-check-label" for="electronics">Electronics</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="category" id="clothing">
          <label class="form-check-label" for="clothing">Clothing</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="category" id="accessories">
          <label class="form-check-label" for="accessories">Accessories</label>
        </div>
      </div>
    </div>

    <!-- Main Content -->
    <div class="col-md-9">
      <!-- Search and Sort -->
      <div class="d-flex justify-content-between align-items-center mb-4">
        <div class="search-container">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search products...">
            <button class="btn btn-primary">Search</button>
          </div>
        </div>
        <div class="sort-container">
          <label class="mb-0">Sort by:</label>
          <select class="form-select" style="width: auto;">
            <option value="price-asc">Price: Low to High</option>
            <option value="price-desc">Price: High to Low</option>
          </select>
        </div>
      </div>

      <!-- Products Grid -->
      <div class="row">
        <!-- Product Card 1 -->
        <div class="col-md-4">
          <div class="card product-card shadow-sm">
            <img src="https://via.placeholder.com/300" class="card-img-top" alt="Product 1">
            <div class="card-body text-center">
              <h5 class="card-title">Product Name 1</h5>
              <p class="card-text text-muted">$199.99</p>
              <button class="btn btn-primary">Add to Cart</button>
            </div>
          </div>
        </div>

        <!-- Product Card 2 -->
        <div class="col-md-4">
          <div class="card product-card shadow-sm">
            <img src="https://via.placeholder.com/300" class="card-img-top" alt="Product 2">
            <div class="card-body text-center">
              <h5 class="card-title">Product Name 2</h5>
              <p class="card-text text-muted">$299.99</p>
              <button class="btn btn-primary">Add to Cart</button>
            </div>
          </div>
        </div>

        <!-- Product Card 3 -->
        <div class="col-md-4">
          <div class="card product-card shadow-sm">
            <img src="https://via.placeholder.com/300" class="card-img-top" alt="Product 3">
            <div class="card-body text-center">
              <h5 class="card-title">Product Name 3</h5>
              <p class="card-text text-muted">$399.99</p>
              <button class="btn btn-primary">Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  // Add event listeners for category filtering
  document.querySelectorAll('input[name="category"]').forEach(radio => {
    radio.addEventListener('change', function() {
      // Add your category filtering logic here
      console.log('Selected category:', this.id);
    });
  });

  // Add event listener for price sorting
  document.querySelector('.form-select').addEventListener('change', function() {
    // Add your sorting logic here
    console.log('Sort by:', this.value);
  });

  // Add event listener for search
  document.querySelector('.btn-primary').addEventListener('click', function() {
    const searchTerm = document.querySelector('.form-control').value;
    // Add your search logic here
    console.log('Search term:', searchTerm);
  });
</script>
</body>
</html>
