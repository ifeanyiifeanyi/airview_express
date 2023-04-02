<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="index3.html" class="brand-link">
    <img src="{{ asset('admin/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo"
      class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">Admin Dashboard</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="{{ asset('admin/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">{{ ucwords(Auth::user()->name) }}</a>
      </div>
    </div>

    <!-- SidebarSearch Form -->
    <div class="form-inline">
      <div class="input-group" data-widget="sidebar-search">
        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-sidebar">
            <i class="fas fa-search fa-fw"></i>
          </button>
        </div>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
        <li class="nav-item menu-open">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Jobs
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('job.index') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>All Jobs</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('job.create') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Create Jobs</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('job.category') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Job Categories</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item menu-open">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Visa
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('visa') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>All visa application</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('visa.create') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Create application types</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-briefcase"></i>
            <p>
              Admin Profile
            </p>
          </a>
        </li>
        <li class="nav-item menu-open">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-cog"></i>
            <p>
              Settings
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>SEO Setting</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>About Setting</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Banner Setting</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Social Links</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item menu-open">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-users"></i>
            <p>
             User Settings
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('manage.user') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>All Users</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('manage.visa.applications') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>User visa applications</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('manage.appliedjobs') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>User job application</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('manage.payments') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Manage Payment Type</p>
              </a>
            </li>
            
            
          </ul>
        </li>
        <li class="nav-item mb-5">
         
          <form action="{{ route('admin.logout') }}" method="POST">
            @csrf
            <i class="fas fa-padlock nav-icon"></i>
            <button type="submit" class="nav-link btn btn-danger text-light"> Logout</button>
        </form>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>