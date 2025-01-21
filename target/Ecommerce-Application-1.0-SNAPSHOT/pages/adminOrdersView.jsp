<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 20/01/2025
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>

<!-- Navbar -->
<% String currentPage = "orders"; %>
<%@ include file="../includes/adminNavBar.jsp" %>

<!-- Content -->
<div class="container mt-5">
    <h1 class="text-center mb-4">Orders</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Order ID</th>
            <th>Order Date</th>
            <th>Total Amount</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>101</td>
            <td>2025-01-15</td>
            <td>$250</td>
        </tr>
        <tr>
            <td>102</td>
            <td>2025-01-16</td>
            <td>$500</td>
        </tr>
        <tr>
            <td>103</td>
            <td>2025-01-17</td>
            <td>$150</td>
        </tr>
        <!-- Additional rows can be dynamically added from the database -->
        </tbody>
    </table>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
