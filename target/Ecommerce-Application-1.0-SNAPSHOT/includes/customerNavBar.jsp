<nav class="navbar navbar-expand-lg bg-light shadow-sm">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="#">User Profile</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link <%= "product".equals(currentPage) ? "active" : "" %>" href="../WEB-INF/pages/customerProductPage.jsp">Products</a></li>
                <li class="nav-item"><a class="nav-link <%= "cart".equals(currentPage) ? "active" : "" %>" href="../WEB-INF/pages/customerCart.jsp">Cart</a></li>
                <li class="nav-item"><a class="nav-link <%= "checkout".equals(currentPage) ? "active" : "" %>" href="../WEB-INF/pages/customerCheckout.jsp">Checkout</a></li>
                <li class="nav-item"><a class="nav-link <%= "user".equals(currentPage) ? "active" : "" %>" href="../WEB-INF/pages/customerUserManagement.jsp">Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
