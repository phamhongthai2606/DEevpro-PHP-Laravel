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
      <a class="app-menu__item active" href="{{ asset('admin/orders') }}">
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
  <div class="app-title">
    <ul class="app-breadcrumb breadcrumb side">
      <li class="breadcrumb-item active">
        <b>Danh sách đơn hàng</b>
      </li>
    </ul>
  </div>
  @php
    function getCustomerName($customer_id){
      $record = DB::table("customers")->where("id","=",$customer_id)->first();
      return isset($record->name) ? $record->name : "";
    }
  @endphp
  <div class="row">
    <div class="col-md-12">
      <div class="panel panel-primary">
        <div class="panel-heading"></div>
        <div class="panel-body">
          <table class="table table-bordered table-hover">
            <tr>
              <th>Mã đơn hàng</th>
              <th>Tên khách hàng</th>
              <th>Thành tiền</th>
              <th style="width:150px;">Trạng thái</th>
              <th style="width:100px;"></th>
            </tr>
            @foreach($data as $row)
            <tr>
              <td>{{ $row->id }}</td>
              <td>{{ getCustomerName($row->customer_id) }}</td>
              <td>{{ number_format($row->price) }}</td>
              <td style="text-align:center;">
                @if($row->status == 1)
                  <span style="color:red;">Đã giao hàng</span>
                @else
                  <span>Chưa giao hàng</span>
                @endif
              </td>
              <td style="text-align:center;">
                <a href="{{ url('admin/orders/detail/'.$row->id) }}" class="label label-warning">Chi tiết</a>
              </td>
            </tr>
            @endforeach
          </table>
          <style type="text/css">
            .pagination{padding:0px; margin:0px;}
          </style>
          {{ $data->render() }}
        </div>
      </div>
    </div>
  </div>
</main>
@endsection