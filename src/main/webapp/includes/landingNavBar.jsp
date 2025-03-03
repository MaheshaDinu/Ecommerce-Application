<nav class="navbar navbar-expand-lg bg-transparent  sticky-top" style="background-color: rgba(0, 0, 0, 0.7);">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="#">
      <img src="Assets/Images/UnishopZone%20Background%20removed.png" id="logo-img" style="height: 5rem; width: 5rem">UniShopZone
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link <%= "home".equals(currentPage) ? "active" : "" %>" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <%= "login".equals(currentPage) ? "active" : "" %>" href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <%= "register".equals(currentPage) ? "active" : "" %>" href="register.jsp">Register</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
