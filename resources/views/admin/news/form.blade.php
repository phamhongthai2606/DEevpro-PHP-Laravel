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
            <a class="app-menu__item active" href="{{ asset('admin/news') }}">
              <i class='app-menu__icon bx bxs-user-account'></i>
              <span class="app-menu__label">Danh sách tin tức</span>
            </a>
        </li>
    </ul>
</aside>

<main class="app-content">
    <div class="col-md-12"> 
        <div class="panel panel-primary" style="margin-top: -20px">
            <div class="panel-heading">Thêm sửa tin tức</div>
            <div class="panel-body">
                <!-- muốn upload được file phải có thuộc tính sau: enctype="multipart/form-data" -->
                <form method="post" action="{{ $action }}" enctype="multipart/form-data">
                @csrf
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Mã tin tức</div>
                    <div class="col-md-10">
                        <input type="text" value="{{ isset($record->id)?$record->id:'' }}" name="id" class="form-control" required>
                    </div>
                </div>

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Tên tin tức</div>
                    <div class="col-md-10">
                        <input type="text" value="{{ isset($record->name)?$record->name:'' }}" name="name" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Ảnh</div>
                    <div class="col-md-10">
                        <input type="file" name="image">
                    </div>
                </div>
                <!-- end rows -->

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Mô tả</div>
                    <div class="col-md-10">
                        <textarea  id="description" name="description">{{ isset($record->description) ? $record->description : "" }}</textarea>
                        <script>
                            ClassicEditor
                                .create( document.querySelector( '#description' ) )
                                .catch( error => {
                                    console.error( error );
                                } );
                        </script>
                    </div>
                </div>
                <!-- end rows -->  
                
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Chi tiết</div>
                    <div class="col-md-10">
                        <textarea id="content" name="content">{{ isset($record->content) ? $record->content : "" }}</textarea>
                        <script>
                            ClassicEditor
                                .create( document.querySelector( '#content' ) )
                                .catch( error => {
                                    console.error( error );
                                } );
                        </script>
                    </div>
                </div>
                <!-- end rows --> 

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="checkbox" id="hot" @if(isset($record->hot) && $record->hot == 1) checked @endif name="hot"> <label for="hot">Hot</label>
                    </div>
                </div>
                <!-- end rows -->

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