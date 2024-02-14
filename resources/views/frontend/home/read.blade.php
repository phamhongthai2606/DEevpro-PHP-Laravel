<!-- import file layout_trang_chu.blade.php vao day -->
@extends("frontend.layout_trang_chu")
@section("append-du-lieu")
@foreach($categories as $row_category)
  <div class="product">
    <div>
      <h2 class="xiaomi">{{ $row_category->name }}</h2>
      <div class="products">
        @php
          //lay cac san pham thuoc danh muc
          $products = DB::table("products")->where("category_id","=",$row_category->id)->orderBy("id","desc")->offset(0)->take(10)->get();
        @endphp
        @foreach($products as $row)
        <div class="info">
          <a href="{{ url('products/detail/'.$row->id) }}">
            <img src="{{ asset('upload/products/'.$row->image) }}">
          </a>
          <div class="desc">
            <h3 class="title">
              <a href="{{ url('products/detail/'.$row->id) }}">{{ $row->name }}</a>
            </h3>
            <div class="price">
              <p style="text-decoration:line-through; font-size:16px"> {{ number_format($row->price) }} đ </p>
            </div>
            <div class="price">
              <p style="font-size:16px"> {{ number_format($row->price - ($row->price * $row->discount)/100) }} đ </p>
            </div>
            <div class="ratingresult" style="margin-left: 40px; margin-bottom: -20px; font-size: 14px;">
              <p class="price-box"> 
                <a href="{{ url('products/rate/'.$row->id.'?star=1') }}"><i class="fa fa-star"></i></a> 
                <a href="{{ url('products/rate/'.$row->id.'?star=2') }}"><i class="fa fa-star"></i></a> 
                <a href="{{ url('products/rate/'.$row->id.'?star=3') }}"><i class="fa fa-star"></i></a> 
                <a href="{{ url('products/rate/'.$row->id.'?star=4') }}"><i class="fa fa-star"></i></a> 
                <a href="{{ url('products/rate/'.$row->id.'?star=5') }}"><i class="fa fa-star"></i></a> 
              </p>
            </div>
          </div>
          <div class="button" style="margin-top: 0px;">
            <a href="{{ url('cart/buy/'.$row->id) }}">
              <button class="button1">Thêm vào giỏ hàng</button>
            </a>    
          </div> 
        </div>      
        @endforeach
      </div>
    </div>
  </div>
@endforeach

<div class="product">
  <div>
    <h2 class="xiaomi">SẢN PHẨM BÁN CHẠY</h2>
    <div class="products">
      @foreach($hot_products as $row)
      <div class="info">
        <a href="{{ url('products/detail/'.$row->id) }}">
          <img src="{{ asset('upload/products/'.$row->image) }}">
        </a>
        <div class="desc">
          <h3 class="title">
            <a href="{{ url('products/detail/'.$row->id) }}">{{ $row->name }}</a>
          </h3>
          <div class="price">
            <p style="text-decoration:line-through; font-size: 16px"> {{ number_format($row->price) }} đ </p>
          </div>
          <div class="price">
            <p style="font-size: 16px"> {{ number_format($row->price - ($row->price * $row->discount)/100) }} đ </p>
          </div>
          <div class="ratingresult" style="margin-left: 40px; margin-bottom: -20px; font-size: 14px;">
            <p class="price-box"> 
              <a href="{{ url('products/rate/'.$row->id.'?star=1') }}"><i class="fa fa-star"></i></a> 
              <a href="{{ url('products/rate/'.$row->id.'?star=2') }}"><i class="fa fa-star"></i></a> 
              <a href="{{ url('products/rate/'.$row->id.'?star=3') }}"><i class="fa fa-star"></i></a> 
              <a href="{{ url('products/rate/'.$row->id.'?star=4') }}"><i class="fa fa-star"></i></a> 
              <a href="{{ url('products/rate/'.$row->id.'?star=5') }}"><i class="fa fa-star"></i></a> 
            </p>
          </div>
          <div class="button" style="margin-top: 0px">
            <a href="{{ url('cart/buy/'.$row->id) }}">
              <button class="button1">Thêm vào giỏ hàng</button>
            </a>    
          </div> 
        </div>
      </div>
      @endforeach
    </div>
  </div>
</div>

<div class="product">
  <div>
    <h2 class="xiaomi">Tin tức</h2>
    <div class="slider1">
      @foreach($news as $row) 
      <div class="slider-video">
        <div class="item-video">
          <a href="{{ url('news/detail/'.$row->id) }}">
            <img src="{{ asset('upload/news/'.$row->image) }}">
          </a>
          <a href="{{ url('news/detail/'.$row->id) }}">
            <p>{{ $row->name }}</p>
          </a>
        </div>
      </div> 
    @endforeach
    </div>
  </div>
</div>

@endsection