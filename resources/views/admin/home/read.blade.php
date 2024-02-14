<!-- import file layout.blade.php vao day -->
@extends("admin.layout")
<!-- do du lieu ben duoi vao tag append-du-lieu-view-vao-day cua file layout.blade.php -->
@section("append-du-lieu-view")
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
<div class="app-sidebar__user">
  
</div>

<ul class="app-menu">
  <li>
    <a class="app-menu__item active" href="{{ asset('admin/home') }}">
      <i class='app-menu__icon bx bx-tachometer'></i>
      <span class="app-menu__label">Quản lý chung</span>
    </a>
  </li>
  @if(Auth::user()->permission == "admin")
  <li>
    <a class="app-menu__item" href="{{ asset('admin/customers') }}">
      <i class='app-menu__icon bx bx-id-card'></i> 
      <span class="app-menu__label">Danh sách khách hàng</span>
    </a>
  </li>

  <li>
    <a class="app-menu__item" href="{{ asset('admin/users') }}">
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
  @endif

  @if(Auth::user()->permission == "admin" || Auth::user()->permission == "user")
  <li>
    <a class="app-menu__item" href="{{ asset('admin/products') }}">
      <i class='app-menu__icon bx bx-purchase-tag-alt'></i>
      <span class="app-menu__label">Danh sách sản phẩm</span>
    </a>
  </li>
  @endif

  @if(Auth::user()->permission == "admin" || Auth::user()->permission == "order")
  <li>
    <a class="app-menu__item" href="{{ asset('admin/orders') }}">
      <i class='app-menu__icon bx bxs-shopping-bags'></i>
      <span class="app-menu__label">Danh sách đơn hàng</span>
    </a>
  </li>
  @endif

  @if(Auth::user()->permission == "admin" || Auth::user()->permission == "user")
  <li>
    <a class="app-menu__item" href="{{ asset('admin/news') }}">
      <i class='app-menu__icon bx bxs-user-account'></i>
      <span class="app-menu__label">Danh sách tin tức</span>
    </a>
  </li>
  @endif
</ul>
</aside>

<main class="app-content">
<div class="row">
  <!--Left-->
  <div class="col-md-12 col-lg-12">
    <div class="row">
      <!-- col-6 -->
      <div class="col-md-6">
        <div class="widget-small primary coloured-icon">
          <i class='icon bx bxs-user-account fa-3x'></i>
          <div class="info">
            <h4>Tổng khách hàng</h4>
            <p>
              <b>56 khách hàng</b>
            </p>
            <p class="info-tong">Tổng số khách hàng được quản lý</p>
          </div>
        </div>
      </div>
   <!-- col-6 -->
      <div class="col-md-6">
        <div class="widget-small info coloured-icon">
          <i class='icon bx bxs-data fa-3x'></i>
          <div class="info">
            <h4>Tổng sản phẩm</h4>
            <p>
              <b>1850 sản phẩm</b>
            </p>
            <p class="info-tong">Tổng số sản phẩm được quản lý</p>
          </div>
        </div>
      </div>
       <!-- col-6 -->
      <div class="col-md-6">
        <div class="widget-small warning coloured-icon">
          <i class='icon bx bxs-shopping-bags fa-3x'></i>
          <div class="info">
            <h4>Tổng đơn hàng</h4>
            <p>
              <b>247 đơn hàng</b>
            </p>
            <p class="info-tong">Tổng số hóa đơn bán hàng trong tháng.</p>
          </div>
        </div>
      </div>
       <!-- col-6 -->
      <div class="col-md-6">
        <div class="widget-small danger coloured-icon">
          <i class='icon bx bxs-error-alt fa-3x'></i>
          <div class="info">
            <h4>Hết hàng</h4>
            <p><b>4 sản phẩm</b></p>
            <p class="info-tong">Số sản phẩm cảnh báo hết cần nhập thêm.</p>
          </div>
        </div>
      </div>
       <!-- col-12 -->
       <div class="col-md-12">
        <div class="tile">
            <h3 class="tile-title">Danh sách đơn hàng</h3>
          <div>
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>Mã đơn hàng</th>
                  <th>Tên khách hàng</th>
                  <th>Tổng tiền</th>
                  <th>Trạng thái</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>AL3947</td>
                  <td>Phạm Thị Ngọc</td>
                  <td>
                    19.770.000 đ
                  </td>
                  <td><span class="badge bg-info">Chờ xử lý</span></td>
                </tr>
                <tr>
                  <td>ER3835</td>
                  <td>Nguyễn Thị Mỹ Yến</td>
                  <td>
                    16.770.000 đ  
                  </td>
                  <td><span class="badge bg-warning">Đang vận chuyển</span></td>
                </tr>
                <tr>
                  <td>MD0837</td>
                  <td>Triệu Thanh Phú</td>
                  <td>
                    9.400.000 đ 
                  </td>
                  <td><span class="badge bg-success">Đã hoàn thành</span></td>
                </tr>
                <tr>
                  <td>MT9835</td>
                  <td>Đặng Hoàng Phúc </td>
                  <td>
                    40.650.000 đ  
                  </td>
                  <td><span class="badge bg-danger">Đã hủy</span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- / div trống-->
        </div>
       </div>
        <!-- / col-12 -->
         <!-- col-12 -->
        <div class="col-md-12">
            <div class="tile">
              <h3 class="tile-title">Danh sách người dùng</h3>
            <div>
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>Mã người dùng</th>
                    <th>Tên người dùng</th>
                    <th>Ngày sinh</th>
                    <th>Số điện thoại</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>#55556</td>
                    <td>Hà Thị Lam</td>
                    <td>08/05/2001</td>
                    <td>
                      <span class="tag tag-success">0931342432</span>
                    </td>
                  </tr>
                  <tr>
                    <td>#CD55554</td>
                    <td>Đặng Hoàng Phúc</td>
                    <td>07/01/2001</td>
                    <td>
                      <span class="tag tag-warning">0862698175</span>
                    </td>
                  </tr>
                  <tr>
                    <td>#CD45658</td>
                    <td>Nguyễn Thị Mỹ Yến</td>
                    <td>26/06/2001</td>
                    <td>
                      <span class="tag tag-primary">0862698175</span>
                    </td>
                  </tr>
                  <tr>
                    <td>#CD89495</td>
                    <td>Phạm Thị Ngọc</td>
                    <td>08/05/2001</td>
                    <td>
                      <span class="tag tag-danger">0862698175</span>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
         <!-- / col-12 -->
    </div>
  </div>
  <!--END left-->
</div>
</main>
@endsection