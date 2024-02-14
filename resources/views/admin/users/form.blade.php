<!-- import file layout.blade.php vao day -->
@extends("admin.layout")
<!-- do du lieu ben duoi vao tag append-du-lieu-view-vao-day cua file layout.blade.php -->
@section("append-du-lieu-view")

<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
  <div class="app-sidebar__user"></div>

  <ul class="app-menu">
    <li>
      <a class="app-menu__item" href="{{ asset('admin/home') }}">
        <i class='app-menu__icon bx bx-tachometer'></i>
        <span class="app-menu__label">Quản lý chung</span>
      </a>
    </li>
    <li>
      <a class="app-menu__item" href="{{ asset('admin/customers') }}">
        <i class='app-menu__icon bx bx-id-card'></i> 
        <span class="app-menu__label">Danh sách khách hàng</span>
      </a>
    </li>
    <li>
      <a class="app-menu__item active" href="{{ asset('admin/users') }}">
        <i class='app-menu__icon bx bx-user-voice'></i>
        <span class="app-menu__label">Danh sách nhân viên</span>
      </a>
    </li>
     <li>
      <a class="app-menu__item" href="{{ asset('admin/categories') }}">
        <i class='app-menu__icon bx bx-task'></i>
        <span class="app-menu__label">Danh mục sản phẩm</span>
      </a>
    </li>
    <li>
      <a class="app-menu__item" href="{{ asset('admin/products') }}">
        <i class='app-menu__icon bx bx-purchase-tag-alt'></i>
        <span class="app-menu__label">Danh sách sản phẩm</span>
      </a>
    </li>
    <li>
      <a class="app-menu__item" href="{{ asset('admin/orders') }}">
        <i class='app-menu__icon bx bxs-shopping-bags'></i>
        <span class="app-menu__label">Danh sách đơn hàng</span>
      </a>
    </li>
    <li>
      <a class="app-menu__item" href="{{ asset('admin/news') }}">
        <i class='app-menu__icon bx bxs-user-account'></i>
        <span class="app-menu__label">Danh sách tin tức</span>
      </a>
    </li>
  </ul>
</aside>

<main class="app-content">
  <div class="col-md-12"> 
  @if(Request::get("notify") == "email-exists")
    <div class="alert alert-danger">Email đã tồn tại,mời bạn chọn email khác</div>
  @endif 
  </div>

  <div class="panel panel-primary" style="margin-top: -20px">
    <div class="panel-heading">Thêm sửa người dùng</div>
    <div class="panel-body">
      <form method="post" action="{{ $action }}">
      @csrf
      <!-- rows -->
      <div class="form-group col-md-12">
        <div class="control-label">Mã người dùng</div>
        <div>
          <input type="text" value="{{ isset($record->id)?$record->id:'' }}" name="id" class="form-control" required>
        </div>
      </div>
      <!-- end rows -->

      <!-- rows -->
      <div class="form-group col-md-12">
        <div class="control-label">Họ tên</div>
        <div>
          <input type="text" value="{{ isset($record->name)?$record->name:'' }}" name="name" class="form-control" required>
        </div>
      </div>
      <!-- end rows -->

      <!-- rows -->
      @php
        $disabled = "";
        if(isset($record->email))
          $disabled = "disabled";
      @endphp
      <div class="form-group col-md-12">
        <div class="control-label">Email</div>
        <div>
          <input type="email" {{ $disabled }} value="{{ isset($record->email)?$record->email:'' }}" name="email" class="form-control" required>
        </div>
      </div>
      <!-- end rows -->

      <!-- rows -->
      @php
        $required = "";
        $placeholder = "";
        if(isset($record->email))
          $placeholder = 'placeholder="Không đổi mật khẩu thì không nhập thông tin vào ô này"';
        else
          $required = "required";
      @endphp
      <div class="form-group col-md-12">
        <div class="control-label">Mật khẩu</div>
        <div>
          <input type="password" {!! $placeholder !!}  {!! $required !!} name="password" class="form-control">
        </div>
      </div>
      <!-- end rows -->

      <div class="form-group col-md-12">
        <div class="control-label">Địa chỉ</div>
        <div>
          <input type="text" value="{{ isset($record->address)?$record->address:'' }}" name="address" class="form-control" required>
        </div>
      </div>

      <div class="form-group col-md-12">
        <div class="control-label">Ngày sinh</div>
        <div>
          <input type="text" value="{{ isset($record->birthday)?$record->birthday:'' }}" name="birthday" class="form-control" required>
        </div>
      </div>

      <div class="form-group col-md-12">
        <div class="control-label">Giới tính</div>
        <div>
          <input type="text" value="{{ isset($record->gender)?$record->gender:'' }}" name="gender" class="form-control" required>
        </div>
      </div>

      <div class="form-group col-md-12">
        <div class="control-label">Số điện thoại</div>
        <div>
          <input type="text" value="{{ isset($record->phonenumber)?$record->phonenumber:'' }}" name="phonenumber" class="form-control" required>
        </div>
      </div>

      <!-- rows -->
      <div class="row" style="margin-top:5px;">
          <div class="col-md-5"></div>
          <div class="col-md-7">
            <input type="submit" value="Thực hiện" class="btn btn-primary">
          </div>
      </div>
      <!-- end rows -->
      </form>
    </div>
  </div>
</main>
@endsection