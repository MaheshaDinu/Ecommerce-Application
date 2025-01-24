<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 19/01/2025
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="CSS/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<% String currentPage = "login"; %>
<%@ include file="includes/landingNavBar.jsp" %>

<%String error = (String) session.getAttribute("error");%>




<div class="container d-flex flex-column align-items-center justify-content-center" style="min-height: 90vh;">
    <!-- Login Card -->
    <div class="card shadow-lg p-4" style="width: 400px; border-radius: 10px;">
        <div class="text-center mb-3">
            <img src="Assets/Images/UnishopZone%20Background%20removed.png" alt="User Icon" height="100" width="100">
        </div>
        <h4 class="text-center text-primary mb-4">Sign In</h4>
        <form action="login-servlet" method="post">
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input id="username" type="text" name="Username" class="form-control" placeholder="Enter your username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input id="password" type="password" name="Password" class="form-control" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Login</button>
        </form>
        <div class="text-center mt-3">
            <a href="register.jsp" class="text-decoration-none">Don't have an account? Register here</a>
        </div>
    </div>

    <% if (error != null) { %>
    <!-- Alert for invalid credentials -->
    <div class="alert alert-danger alert-dismissible fade show position-absolute top-50 start-50 translate-middle text-center w-25" style="z-index: 2; " role="alert">
        <strong>Invalid Credentials!</strong><br> <%= error %>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <% session.removeAttribute("error"); %>
    <% } %>
</div>




<%--footer--%>
<%@include file="includes/footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
