<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 20/01/2025
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="#"><img src="../Assets/Images/UnishopZone%20Background%20removed.png" style="width: 5rem; height: 5rem" id="logo-img"> UniShopZone</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="adminDashboard.jsp">Products</a></li>
                <li class="nav-item"><a class="nav-link" href="adminCategoryManagement.jsp">Categories</a></li>
                <li class="nav-item"><a class="nav-link" href="adminOrdersView.jsp">Orders</a></li>
                <li class="nav-item"><a class="nav-link active" href="adminUserActivation.jsp">Users</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Content -->
<div class="container mt-5">
    <h1 class="text-center mb-4">Users</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Username</th>
            <th>Name</th>
            <th>Address</th>
            <th>Contact Number</th>
            <th>Email</th>
            <th>Active Status</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <!-- Assuming you have a list of users -->
        <tr>
            <td>john_doe</td>
            <td>John Doe</td>
            <td>123 Elm St, Springfield</td>
            <td>555-1234</td>
            <td>john@example.com</td>
            <td>
                <!-- Display active status, change button based on status -->
                <span id="status-1" class="badge bg-success">Active</span>
            </td>
            <td>
                <button class="btn btn-warning" onclick="toggleActiveStatus(1)">Change Status</button>
            </td>
        </tr>
        <tr>
            <td>jane_smith</td>
            <td>Jane Smith</td>
            <td>456 Oak St, Springfield</td>
            <td>555-5678</td>
            <td>jane@example.com</td>
            <td>
                <span id="status-2" class="badge bg-danger">Inactive</span>
            </td>
            <td>
                <button class="btn btn-warning" onclick="toggleActiveStatus(2)">Change Status</button>
            </td>
        </tr>
        <!-- Additional rows can be dynamically added from the database -->
        </tbody>
    </table>
</div>

<!-- JavaScript to handle changing active status -->
<script>
    function toggleActiveStatus(userId) {
        var statusElement = document.getElementById('status-' + userId);
        if (statusElement.classList.contains('bg-success')) {
            statusElement.classList.remove('bg-success');
            statusElement.classList.add('bg-danger');
            statusElement.textContent = 'Inactive';
        } else {
            statusElement.classList.remove('bg-danger');
            statusElement.classList.add('bg-success');
            statusElement.textContent = 'Active';
        }

        // You can add an AJAX request here to update the active status in the backend
        // Example (pseudo code):
        // $.post('/updateUserStatus', {userId: userId, active: statusElement.textContent === 'Active'});
    }
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>

