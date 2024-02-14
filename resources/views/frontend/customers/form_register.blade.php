@extends("frontend.layout_dangky")
@section("append-du-lieu")
  <div class="template-customer" style="margin-top: 10px; font-size: 16px;">
    <h1 style="text-align: center; font-size: 30px;">Đăng ký</h1>
    <div class="row" style="margin-top:50px;">
      <div class="col-md-6">
        <div class="wrapper-form">
          <form method='post' action="{{ url('customers/register-post') }}">
            @csrf
            <p class="title">
              <span style="font-size: 20px">Đăng ký tài khoản</span>
            </p>
            <div class="form-group">
              <label>Họ và tên:<b id="req">*</b></label>
              <input type="text" name="name" class="input-control">
            </div>
            <div class="form-group">
              <label>Email:<b id="req">*</b></label>
              <input type="text" name="email" class="input-control" required>
            </div>
            <div class="form-group">
              <label>Mật khẩu:<b id="req">*</b></label>
              <input type="password" name="password" class="input-control" required="">
            </div>
            <div class="form-group">
              <label>Địa chỉ:<b id="req">*</b></label>
              <input type="text" name="address" class="input-control">
            </div>
            <div class="form-group">
              <label>Điện thoại:<b id="req">*</b></label>
              <input type="text" name="phone" class="input-control">
            </div>
            <div class="form-group">
              <input type="submit" class="button" value="Đăng ký">
            </div>
          </form>
        </div>
      </div>
      <div class="col-md-6">
        <div class="wrapper-form">
          <p class="title">
            <span style="font-size: 20px">Đăng nhập</span>
          </p>
          <p>Đăng nhập tài khoản nếu bạn đã có tài khoản. Đăng nhập tài khoản để theo dõi đơn đặt hàng, vận chuyển và đặt hàng được thuận lợi.</p>
          <a href="{{ url('customers/login') }}" class="button">Đăng nhập</a> 
        </div>
      </div>
    </div>
  </div>
@endsection