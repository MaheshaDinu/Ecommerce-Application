<%--
  Created by IntelliJ IDEA.
  User: Mahesha Dinushan
  Date: 21/01/2025
  Time: 07:44
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="#"><img src="../Assets/Images/UnishopZone%20Background%20removed.png" style="width: 5rem; height: 5rem" id="logo-img"> UniShopZone</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link <%= "product".equals(currentPage) ? "active" : "" %>" href="adminDashboard.jsp">Products</a></li>
                <li class="nav-item"><a class="nav-link <%= "category".equals(currentPage) ? "active" : "" %>" href="adminCategoryManagement.jsp">Categories</a></li>
                <li class="nav-item"><a class="nav-link <%= "orders".equals(currentPage) ? "active" : "" %>" href="adminOrdersView.jsp">Orders</a></li>
                <li class="nav-item"><a class="nav-link <%= "users".equals(currentPage) ? "active" : "" %>" href="adminUserActivation.jsp">Users</a></li>
                <li class="nav-item"><a class="nav-link " href="../login.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
