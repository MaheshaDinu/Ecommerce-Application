<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 23/01/2025
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Checkout - UniShopZone</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .checkout-summary {
      background-color: #f8f9fa;
      padding: 20px;
      border-radius: 8px;
    }
    .total-amount {
      font-size: 1.5rem;
      font-weight: bold;
      color: #0d6efd;
    }
  </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-light shadow-sm">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="#">User Profile</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link " href="customerProductPage.jsp">Products</a></li>
        <li class="nav-item"><a class="nav-link" href="customerCart.jsp">Cart</a></li>
        <li class="nav-item"><a class="nav-link" href="customerCheckout.jsp">Checkout</a></li>
        <li class="nav-item"><a class="nav-link active" href="customerUserManagement.jsp">Profile</a></li>
        <li class="nav-item"><a class="nav-link" href="../login.jsp">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Checkout Content -->
<div class="container mt-4">
  <h2 class="text-center mb-4">Checkout</h2>

  <!-- Order Summary -->
  <div class="row">
    <div class="col-md-8">
      <h4 class="mb-3">Order Summary</h4>
      <table class="table table-bordered">
        <thead class="table-light">
        <tr>
          <th>Product</th>
          <th>Quantity</th>
          <th>Price</th>
          <th>Subtotal</th>
        </tr>
        </thead>
        <tbody>
        <!-- Loop through order details -->
        <c:forEach var="orderDetail" items="${order.orderDetails}">
          <tr>
            <td>${orderDetail.product.name}</td>
            <td>${orderDetail.quantity}</td>
            <td>$${orderDetail.price}</td>
            <td>$${orderDetail.quantity * orderDetail.price}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>

    <!-- Checkout Summary -->
    <div class="col-md-4">
      <div class="checkout-summary">
        <h4>Checkout Summary</h4>
        <p><strong>Order ID:</strong> ${order.orderId}</p>
        <p><strong>User:</strong> ${order.user.name} (${order.user.email})</p>
        <p><strong>Date:</strong> ${order.orderDate}</p>
        <p><strong>Status:</strong> ${order.status}</p>
        <p class="total-amount">Total: $${order.totalAmount}</p>
        <form action="processCheckout" method="post">
          <input type="hidden" name="orderId" value="${order.orderId}">
          <button type="submit" class="btn btn-primary w-100">Place Order</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>

