@extends("admin.layout")
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
    <li>
      <a class="app-menu__item" href="{{ asset('admin/products') }}">
        <i class='app-menu__icon bx bx-purchase-tag-alt'></i>
        <span class="app-menu__label">Danh sách sản phẩm</span>
      </a>
    </li>
    <li>
      <a class="app-menu__item active" href="{{ asset('admin/orders') }}">
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
    <div class="app-title">
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item active">
            <b>Chi tiết đơn hàng</b>
          </li>
        </ul>
    </div>
    <div class="col-md-12">
        <div style="margin-bottom:5px;">        
            <a href="{{ url('admin/orders') }}" class="btn btn-primary">Quay lại</a>
            @if($order->status == 0)
            <a href="{{ url('admin/orders/update/'.$order->id) }}" class="btn btn-danger">Thực hiện giao hàng</a>     
            @endif    
        </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Thông tin đơn hàng</div>
        <div class="panel-body">
            <table class="table">
                <tr>
                    <td style="width:200px;">Tên khách hàng</td>
                    <td>{{ isset($customer->name) ? $customer->name : "" }}</td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>{{ isset($customer->email) ? $customer->email : "" }}</td>
                </tr>
                <tr>
                    <td>ngày mua</td>
                    <td>{{ isset($order->date) ? date("d/m/Y", strtotime($order->date)) : "" }}</td>
                </tr>
                <tr>
                    <td>Tổng giá</td>
                    <td>{{ isset($order->price) ? $order->price : "" }}</td>
                </tr>
                <tr>
                    <td>Trạng thái giao hàng</td>
                    <td>{{ $order->status }}</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Chi tiết đơn hàng</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:100px; text-align: center;">Ảnh</th>
                    <th style="text-align: center;">Tên sản phẩm</th>
                    <th style="width:100px; text-align: center;">Giá</th>
                    <th style="width:80px; text-align: center;">Giảm giá</th>
                    <th style="width:80px; text-align: center;">Số lượng</th>
                </tr>
                @foreach($products as $row)
                <tr>
                    <td>
                        @if($row->image != "" && file_exists('upload/products/'.$row->image))
                        <img src="{{ asset('upload/products/'.$row->image) }}" style="width:100px;">
                        @endif
                    </td>
                    <td style="text-align:center;">{{ $row->name }}</td>
                    <td style="text-align:center;">{{ number_format($row->price) }}</td>
                    <td style="text-align:center;">{{ $row->discount }}%</td>
                    <td style="text-align:center;">{{ $row->quantity }}</td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>
@endsection