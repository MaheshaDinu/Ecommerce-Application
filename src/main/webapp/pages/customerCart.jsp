<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 23/01/2025
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>UniShop Zone - Cart</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .cart-table th, .cart-table td {
            text-align: center;
            vertical-align: middle;
        }
        .cart-table img {
            width: 80px;
            height: auto;
            border-radius: 8px;
        }
        .total-container {
            text-align: right;
            font-size: 1.2rem;
            margin-top: 20px;
        }
        .btn-custom {
            background-color: #0d6efd;
            color: white;
        }
        .btn-custom:hover {
            background-color: #004080;
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

<!-- Cart Content -->
<div class="container mt-4">
    <h2 class="text-center mb-4">Your Shopping Cart</h2>
    <div class="table-responsive">
        <table class="table table-bordered cart-table">
            <thead class="table-light">
            <tr>
                <th>Product Image</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <!-- Example Product Row -->
            <tr>
                <td><img src="https://via.placeholder.com/80" alt="Product 1"></td>
                <td>Product Name 1</td>
                <td>
                    <input type="number" class="form-control text-center" value="1" min="1">
                </td>
                <td>$199.99</td>
                <td>$199.99</td>
                <td>
                    <button class="btn btn-danger btn-sm">Remove</button>
                </td>
            </tr>
            <tr>
                <td><img src="https://via.placeholder.com/80" alt="Product 2"></td>
                <td>Product Name 2</td>
                <td>
                    <input type="number" class="form-control text-center" value="2" min="1">
                </td>
                <td>$99.99</td>
                <td>$199.98</td>
                <td>
                    <button class="btn btn-danger btn-sm">Remove</button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- Total -->
    <div class="total-container">
        <strong>Total: $399.97</strong>
    </div>

    <!-- Checkout Button -->
    <div class="d-flex justify-content-end mt-3">
        <button class="btn btn-custom">Proceed to Checkout</button>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script>
    // Update total price when quantity changes
    const quantityInputs = document.querySelectorAll('input[type="number"]');
    quantityInputs.forEach(input => {
        input.addEventListener('change', updateCartTotal);
    });

    function updateCartTotal() {
        let total = 0;
        const rows = document.querySelectorAll('.cart-table tbody tr');
        rows.forEach(row => {
            const price = parseFloat(row.children[3].innerText.replace('$', ''));
            const quantity = parseInt(row.children[2].children[0].value);
            const subtotal = price * quantity;
            row.children[4].innerText = `$${subtotal.toFixed(2)}`;
            total += subtotal;
        });
        document.querySelector('.total-container strong').innerText = `Total: $${total.toFixed(2)}`;
    }
</script>
</body>
</html>

