
    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
      <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
        <a class="sidebar-brand brand-logo" href="index.html"><img src="admin/assets/images/logo.svg" alt="logo" /></a>
        <a class="sidebar-brand brand-logo-mini" href="index.html"><img src="admin/assets/images/logo-mini.svg" alt="logo" /></a>
      </div>
      <ul class="nav">

        <li class="nav-item nav-category">
          <span class="nav-link">Navigation</span>
        </li>
        <li class="nav-item menu-items">
          <a class="nav-link" href="{{ url('/users') }}">
            <span class="menu-icon">
              <i class="mdi mdi-account"></i>
            </span>
            <span class="menu-title">Users</span>
          </a>
        </li>

        <li class="nav-item menu-items">
          <a class="nav-link" href="{{ url('/man') }}">
            <span class="menu-icon">
              <i class="mdi mdi-tshirt-v"></i>
            </span>
            <span class="menu-title">Men Wear</span>
          </a>
        </li>
        <li class="nav-item menu-items">
          <a class="nav-link" href="{{ url('/womenwear') }}">
            <span class="menu-icon">
              <i class="mdi mdi-shoe-heel"></i>
            </span>
            <span class="menu-title">Women Wear</span>
          </a>
        </li>
        <li class="nav-item menu-items">
          <a class="nav-link" href="{{ url('/kidswear') }}">
            <span class="menu-icon">
              <i class="mdi mdi-human-female-boy"></i>
            </span>
            <span class="menu-title">Kids Wear</span>
          </a>
        </li>
        <li class="nav-item menu-items">
          <a class="nav-link" href="{{ url('/viewaccessoriespage') }}">
            <span class="menu-icon">
              <i class="mdi mdi-sunglasses"></i>
            </span>
            <span class="menu-title">Accessories</span>
          </a>
        </li>

      </ul>
    </nav>
