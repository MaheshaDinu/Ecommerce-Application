<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>UniShop Zone</title>
  <link rel="stylesheet" href="CSS/indexStyle.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<% String currentPage = "home"; %>
<%@ include file="includes/landingNavBar.jsp" %>

<!-- Hero Section -->
<header id="hero" class="d-flex align-items-center">
  <div class="container text-center">
    <h1>Welcome to UniShop Zone</h1>
    <p>Your one-stop shop for electronics, clothing, and appliances.</p>
    <a href="login.jsp" class="btn btn-primary btn-lg">Login</a>
    <a href="register.jsp" class="btn btn-primary btn-lg">Register</a>
  </div>
</header>

<!-- Product Cards Section -->
<section id="products" class="py-5">
  <div class="container">
    <h2 class="text-center mb-4">Featured Products</h2>
    <div class="row">
      <div class="col-md-4">
        <div class="card product-card shadow">
          <img src="https://via.placeholder.com/300x300" alt="Product 1" class="card-img-top">
          <div class="card-body text-center">
            <h6 class="card-title">Product Name 1</h6>
            <p class="text-muted">$199.99</p>
            <a href="#" class="btn btn-primary btn-sm">Add to Cart</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card product-card shadow">
          <img src="https://via.placeholder.com/300x300" alt="Product 2" class="card-img-top">
          <div class="card-body text-center">
            <h6 class="card-title">Product Name 2</h6>
            <p class="text-muted">$299.99</p>
            <a href="#" class="btn btn-primary btn-sm">Add to Cart</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card product-card shadow">
          <img src="https://via.placeholder.com/300x300" alt="Product 3" class="card-img-top">
          <div class="card-body text-center">
            <h6 class="card-title">Product Name 3</h6>
            <p class="text-muted">$399.99</p>
            <a href="#" class="btn btn-primary btn-sm">Add to Cart</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Footer -->
<%@include file="includes/footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>