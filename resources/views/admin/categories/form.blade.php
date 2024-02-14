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
      <a class="app-menu__item" href="{{ asset('admin/users') }}">
        <i class='app-menu__icon bx bx-user-voice'></i>
        <span class="app-menu__label">Danh sách nhân viên</span>
      </a>
    </li>
     <li>
      <a class="app-menu__item active" href="{{ asset('admin/categories') }}">
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
    <div class="panel panel-primary" style="margin-top: -20px">
      <div class="panel-heading">Thêm sửa danh mục</div>
      <div class="panel-body">
        <form method="post" action="{{ $action }}">
        @csrf
        <div class="row" style="margin-top:5px;">
          <div class="col-md-2">Mã danh mục</div>
          <div class="col-md-10">
            <input type="text" value="{{ isset($record->id)?$record->id:'' }}" name="id" class="form-control" required>
          </div>
        </div>

        <!-- rows -->
        <div class="row" style="margin-top:5px;">
          <div class="col-md-2">Tên danh mục</div>
          <div class="col-md-10">
            <input type="text" value="{{ isset($record->name)?$record->name:'' }}" name="name" class="form-control" required>
          </div>
        </div>
        <!-- end rows -->

        <!-- rows -->
        <div class="row" style="margin-top:5px;">
          <div class="col-md-2">Tên danh mục cha</div>
          <div class="col-md-10">
            @php
              if(isset($record->id))
                $categories = DB::table("categories")->
                where("parent_id","=","0")->where("id","<>",$record->id)->
                orderBy("id","desc")->get();
              else
                $categories = DB::table("categories")->where("parent_id","=","0")->orderBy("id","desc")->get();
            @endphp
            <select name="parent_id" class="form-control" style="">
              <option value="0"></option>
              @foreach($categories as $row)
                <option @if(isset($record->parent_id) && $record->parent_id == $row->id) selected @endif value="{{ $row->id }}"> {{ $row->name }}</option>
              @endforeach
            </select>
          </div>
        </div>

        <div class="row" style="margin-top:5px;">
          <div class="col-md-2"></div>
          <div class="col-md-10">
            <input type="checkbox" id="display_at_home_page" @if(isset($record->display_at_home_page) && $record->display_at_home_page == 1) checked @endif name="display_at_home_page"> <label for="display_at_home_page">Display at home page</label>
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
  </div> 
</main>
@endsection