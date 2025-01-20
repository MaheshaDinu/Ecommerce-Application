<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 19/01/2025
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<% String currentPage = "register"; %>
<%@ include file="includes/landingNavBar.jsp" %>



<section class="h-100 bg-gradient">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">
                <div class="card card-registration my-4">
                    <div class="row g-0">
                        <div class="col-xl-6 d-none d-xl-block">
                            <img src="Assets/Images/registration%20form%20img.jpeg"
                                 alt="Sample photo" class="img-fluid"
                                 style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                        </div>
                        <div class="col-xl-6">
                            <div class="card-body p-md-5 text-black">
                                <h3 class="mb-5 text-uppercase">Customer Registration Form</h3>

                                <!-- Form starts here -->
                                <form action="UserRegistrationServlet" method="post">
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="firstName" name="firstName" class="form-control form-control-lg" required />
                                                <label class="form-label" for="firstName">First Name</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <input type="text" id="lastName" name="lastName" class="form-control form-control-lg" required />
                                                <label class="form-label" for="lastName">Last Name</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="text" id="username" name="username" class="form-control form-control-lg" required />
                                        <label class="form-label" for="username">Username</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="email" id="email" name="email" class="form-control form-control-lg" required />
                                        <label class="form-label" for="email">Email Address</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="password" id="password" name="password" class="form-control form-control-lg" required />
                                        <label class="form-label" for="password">Password</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="password" id="confirmPassword" name="confirmPassword" class="form-control form-control-lg" required />
                                        <label class="form-label" for="confirmPassword">Confirm Password</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="text" id="address" name="address" class="form-control form-control-lg" required />
                                        <label class="form-label" for="address">Address</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="date" id="dob" name="dob" class="form-control form-control-lg" required />
                                        <label class="form-label" for="dob">Date of Birth</label>
                                    </div>

                                    <div class="d-flex justify-content-end pt-3">
                                        <button type="reset" class="btn btn-light btn-lg">Reset</button>
                                        <button type="submit" class="btn btn-outline-primary btn-lg ms-2">Submit</button>
                                    </div>
                                </form>
                                <!-- Form ends here -->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
