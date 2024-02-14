<!DOCTYPE html>
<html lang="en">
<head>
  <title>Trang quản trị</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="{{ asset('admin/css/home.css') }}">
  <link href="{{ asset('admin/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('admin/font-awesome/css/font-awesome.css') }}" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- load file ckeditor vào đây -->
  <script src="https://cdn.ckeditor.com/ckeditor5/40.1.0/classic/ckeditor.js"></script>

  <!-- <link href="{{ asset('admin/font-awesome/css/font-awesome.css') }}" rel="stylesheet"> -->
  <!-- Font-icon css-->
  <!--  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css"> -->
</head>

<body onload="" class="app sidebar-mini rtl">
  <!-- Navbar-->
  <header class="app-header">
    <!-- Sidebar toggle button-->
    <a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
      <!-- User Menu-->
      <li>
        <a class="app-nav__item" href="{{ asset('admin/logout') }}" onclick="return window.confirm('Bạn chắc chắn muốn đăng xuất?');">
        <i class='bx bx-log-out bx-rotate-180'></i> 
        </a>
      </li>
    </ul>
  </header>

  <div id="page-wrapper" style="padding-top: 20px;">
    <div class="row">
        <div class="col-lg-12">
            <!-- content here -->
            @yield('append-du-lieu-view')
            <!-- end content -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
  </div>
  <script src="js/jquery-3.2.1.min.js"></script>
  <!--===============================================================================================-->
  <script src="js/popper.min.js"></script>
  <script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
  <!--===============================================================================================-->
  <script src="js/bootstrap.min.js"></script>
  <!--===============================================================================================-->
  <script src="js/main.js"></script>
  <!--===============================================================================================-->
  <script src="js/plugins/pace.min.js"></script>
  <!--===============================================================================================-->
  <script type="text/javascript" src="{{ asset('admin/js/plugins(1)/chart.js') }}"></script>
</body>
</html>