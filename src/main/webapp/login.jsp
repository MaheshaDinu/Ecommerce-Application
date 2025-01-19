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
<%@include file="includes/landingNavBar.jsp"%>

<div class="loginBox"> <img class="user" src="Assets/Images/UnishopZone%20Background%20removed.png" height="100px" width="100px">
    <h3>Sign in here</h3>
    <form action="login.php" method="post">
        <div class="inputBox">
            <input id="uname" type="text" name="Username" placeholder="Username">
            <input id="pass" type="password" name="Password" placeholder="Password">
        </div>
        <input type="submit" name="" value="Login">
    </form>
    <a href="#">Don't have an Account?Register<br> </a>


</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
