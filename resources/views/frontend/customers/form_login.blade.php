@extends("frontend.layout_dangnhap")
@section("append-du-lieu")
  <div class="template-customer" style="margin-top: 10px; font-size: 16px;">
    <h1 style="text-align: center; font-size: 30px;">Đăng nhập</h1>
    <div class="row" style="margin-top:50px;">
      <div class="col-md-6">
        <div class="wrapper-form">
          <form method='post' action="{{ url('customers/login-post') }}">
            @csrf
            <p class="title">
              <span style="font-size: 20px">Đăng nhập tài khoản</span>
            </p>
            <div class="form-group">
              <label>Email:<b id="req">*</b></label>
              <input type="email" class="input-control" name="email" required="">
            </div>
            <div class="form-group">
              <label>Mật khẩu:<b id="req">*</b></label>
              <input type="password" class="input-control" name="password" required="">
            </div>
            <input type="submit" class="button" value="Đăng nhập">
          </form>
        </div>
      </div>
      <div class="col-md-6">
        <div class="wrapper-form">
          <p class="title">
            <span style="text-align: center; font-size: 20px">Tạo tài khoản mới</span>
          </p>
          <p>Đăng ký tài khoản để mua hàng nhanh hơn. Theo dõi đơn đặt hàng, vận chuyển. Cập nhật các sự kiện và chương trình giảm giá của chúng tôi.</p>
          <a href="{{ url('customers/register') }}" class="button">Đăng ký</a> </div>
      </div>
    </div>
  </div>
@endsection