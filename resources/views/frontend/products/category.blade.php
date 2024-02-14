@extends("frontend.layout_danhmucsanpham")
@section("append-du-lieu")
<div class="menu-left">     
  <div class="panel panel-default" style="margin-top:15px; border: 1px solid black;">
    <div class="panel-heading" style="border-bottom: 1px solid black; font-size: 14px;"> Tìm theo mức giá </div>
    <div class="panel-body" style="padding:0px; margin:0px;">
      <ul class="list-group" style="border:0px;padding:0px; margin:0px;">
        <li class="list-group-item" style="border:0px; font-size: 14px">Giá từ &nbsp;&nbsp;
          <input type="number" min="0" value="0" id="fromPrice" class="form-control" style="border: 1px solid black; font-size: 14px;" />
        </li>
        <li class="list-group-item" style="border:0px; font-size: 14px">Đến &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="number" min="0" value="0" id="toPrice" class="form-control" style="border: 1px solid black; font-size: 14px" />
        </li>
        <li class="list-group-item" style="border:0px; text-align:center">
          <input type="button" class="btn btn-warning" value="Tìm sản phẩm" onclick="location.href = '{{ url('products/search-price') }}?fromPrice=' + document.getElementById('fromPrice').value + '&toPrice=' + document.getElementById('toPrice').value;" />
        </li>
      </ul>
    </div>
  </div>
</div>
        
<div class="menu-right">
  <div class="categoryname">
    <?php
      $category = DB::table("categories")->where("id","=",$category_id)->first();
    ?>  
    <h1 class="category-name"> {{ isset($category->name) ? $category->name : "" }} </h1>
    <div class="col-lg-3 pull-right text-right">
      <select class="form-control" onchange="location.href = '{{ url("products/category/".$category_id."?order=") }}' +this.value;" style="margin-top: 20px; font-size: 16px;  border: 1px solid black; height: 40px">
          <option value="0">Sắp xếp</option>
          <option @if($order=="price_asc") selected @endif value="price_asc">Giá tăng dần</option>
          <option @if($order=="price_desc") selected @endif value="price_desc">Giá giảm dần</option>
          <option @if($order=="name_asc") selected @endif value="name_asc">Sắp xếp A-Z</option>
          <option @if($order=="name_desc") selected @endif value="name_desc">Sắp xếp Z-A</option>
      </select>
    </div>
  </div>

  <div class="products">
  @foreach($rows as $row)
    <div class="info">
      <a href="{{ url('products/detail/'.$row->id) }}">
          <img src="{{ asset('upload/products/'.$row->image) }}">
      </a>
      <div class="desc">
        <h3 class="title">
          <a href="{{ url('products/detail/'.$row->id) }}">{{ $row->name }}</a>
        </h3>
        <div class="price" style="font-size: 14px">
          <span class="price product-price" style="text-decoration:line-through; margin-top: 0px;"> {{ number_format($row->price) }} đ</span> 
        </div>

        <div class="price">
          <span class="price product-price" style="margin-top: -15px"> {{ number_format($row->price - ($row->price * $row->discount)/100) }} đ</span> 
        </div>

        <div class="ratingresult" style="margin-top: -5px">
          <a href="{{ url('products/rate/'.$row->id.'?star=1') }}"><i class="fa fa-star"></i></a>
          <a href="{{ url('products/rate/'.$row->id.'?star=2') }}"><i class="fa fa-star"></i></a>
          <a href="{{ url('products/rate/'.$row->id.'?star=3') }}"><i class="fa fa-star"></i></a>
          <a href="{{ url('products/rate/'.$row->id.'?star=4') }}"><i class="fa fa-star"></i></a>
          <a href="{{ url('products/rate/'.$row->id.'?star=5') }}"><i class="fa fa-star"></i></a>
        </div>
        <div class="button" style="margin-top: -5px">
          <a href="{{ url('cart/buy/'.$row->id) }}">
            <button class="button2">Thêm vào giỏ hàng</button>
          </a>
        </div>
      </div>
    </div>
  @endforeach
  </div>

  <!-- phan trang -->
  <div class="" style="margin-left: 200px; font-size: 16px;">
    {{ $rows->links() }}
  </div>
</div>    
@endsection