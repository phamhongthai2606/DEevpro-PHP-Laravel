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
            <a class="app-menu__item active" href="{{ asset('admin/products') }}">
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
            <div class="panel-heading">Thêm sửa sản phẩm</div>
            <div class="panel-body">
                <!-- muốn upload được file phải có thuộc tính sau: enctype="multipart/form-data" -->
                <form method="post" action="{{ $action }}" enctype="multipart/form-data">
                @csrf
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Mã sản phẩm</div>
                    <div class="col-md-10">
                        <input type="text" value="{{ isset($record->id)?$record->id:'' }}" name="id" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Tên sản phẩm</div>
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
                    <div class="col-md-2">Danh mục</div>
                    <div class="col-md-10">
                        @php
                            $categories = DB::table("categories")->orderBy("id","desc")->get();
                        @endphp
                        <select name="category_id" class="form-control" style="width:970px;">
                            @foreach($categories as $row)
                                <option @if(isset($record->category_id) && $record->category_id == $row->id) selected @endif value="{{ $row->id }}">{{ $row->name }}</option>
                                @php
                                    $sub_categories = DB::table("categories")->where("parent_id","=",$row->id)->orderBy("id","desc")->get();
                                @endphp         
                                    @foreach($sub_categories as $sub_row)
                                        <option @if(isset($record->category_id) && $record->category_id == $sub_row->id) selected @endif value="{{ $sub_row->id }}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $sub_row->name }}</option>
                                    @endforeach                       
                            @endforeach
                        </select>
                    </div>
                </div>
                <!-- end rows --> 

                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Số lượng</div>
                    <div class="col-md-10">
                        <input type="text" value="{{ isset($record->quantity)?$record->quantity:'' }}" name="quantity" class="form-control" required>
                    </div>
                </div>

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Giá</div>
                    <div class="col-md-10">
                        <input type="number" value="{{ isset($record->price)?$record->price:'0' }}" name="price" class="form-control" required>
                    </div>
                </div>
                <!-- end rows --> 

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Giảm giá</div>
                    <div class="col-md-10">
                        <input type="number" value="{{ isset($record->discount)?$record->discount:'0' }}" name="discount" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->   
                    
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Mô tả</div>
                    <div class="col-md-10">
                        <textarea id="description" name="description">{{ isset($record->description) ? $record->description : "" }}</textarea>
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
                    <div class="col-md-2">Khuyến mãi</div>
                    <div class="col-md-10">
                        <textarea id="promotion" name="promotion">{{ isset($record->promotion) ? $record->promotion: "" }}</textarea>
                        <script>
                            ClassicEditor
                                .create( document.querySelector( '#promotion' ) )
                                .catch( error => {
                                    console.error( error );
                                } );
                        </script>
                    </div>
                </div>
                <!-- end rows --> 

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Bảo hành</div>
                    <div class="col-md-10">
                        <textarea id="warranty" name="warranty">{{ isset($record->warranty) ? $record->warranty : "" }}</textarea>
                        <script>
                            ClassicEditor
                                .create( document.querySelector( '#warranty' ) )
                                .catch( error => {
                                    console.error( error );
                                } );
                        </script>
                    </div>
                </div>
                <!-- end rows --> 

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Giao hàng</div>
                    <div class="col-md-10">
                        <textarea id="ship" name="ship">{{ isset($record->ship) ? $record->ship : "" }}</textarea>
                        <script>
                            ClassicEditor
                                .create( document.querySelector( '#ship' ) )
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