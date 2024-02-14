<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="{{ asset('admin/css/login.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('admin/css/bootstrap.min.css') }}">	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"> 
    <!-- Font-icon css-->
  	<!-- <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css"> -->
</head>
<body>
<div class="container" style="margin-top:40px;">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<!-- kiểm tra biến notify truyền từ url -->
			@if(Request::get("notify") == "invalid")
			<div class="alert alert-danger">Đăng nhập không thành công</div>
			@endif
			<div class="panel panel-primary">
				<div class="panel-heading">Đăng nhập</div>
				<div class="panel-body">
					<form method="post" action="{{ url('admin/login-post') }}">
					<!-- phải có tag token sau thì laravel mới bắt được dữ liệu form -->
						@csrf
                        <div class="wrap-input100 validate-input">
                           	<input class="input100" type="email" placeholder="Email" name="email" id="email"> 
                            <span class="symbol-input100">
                                <i class='bx bx-user'></i>
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input">
                            <input class="input100" type="password" placeholder="Mật khẩu" name="password" id="password">
                            <span toggle="#password-field" class="bx fa-fw bx-hide field-icon click-eye"></span>
                            <span class="symbol-input100">
                                <i class='bx bx-key'></i>
                            </span>
                        </div>
						<div class="row" style="margin-top:5px;">
							<div class="col-md-2"></div>
							<div class="col-md-12">
								<input type="submit" value="Đăng nhập" class=""> 
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>