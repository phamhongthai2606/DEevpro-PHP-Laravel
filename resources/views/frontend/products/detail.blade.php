@extends("frontend.layout_chitietsanpham")
@section("append-du-lieu")
@php
	//tao ham lay so sao san pham
	function get_star($product_id,$star){
		$total = DB::table("rating")->where("product_id","=",$product_id)->where("star","=",$star)->get();
		return $total->Count();
	}
@endphp
<div class="chitietsanpham">
    <h1 style="margin-left: 50px">{{ $record->name }}</h1>
    <div class="products-desc">
        <div class="picture">
            <img src="{{ asset('upload/products/'.$record->image) }}">
            <div style="width:310px; border:1px solid #dddddd; margin-top: 15px; margin-left: 90px; font-size: 14px;">
                <h4 style="padding-left: 10px; margin-top: 10px;">Đánh giá</h4>        
                <table style="width: 100%; margin-bottom: -10px;">
                  <tr>
                    <td style="width: 70%; padding-left: 10px;"><i class="fa fa-star"></i></td>
                    <td><span class="label label-primary">{{ get_star($record->id,1) }} đánh giá</span></td>
                  </tr>
                  <tr>
                    <td style="width: 70%; padding-left: 10px;"><i class="fa fa-star"></i><i class="fa fa-star"></i></td>
                    <td>
                        <span class="label label-warning">{{ get_star($record->id,2) }} đánh giá</span>
                    </td>
                  </tr>
                  <tr>
                    <td style="width: 70%; padding-left: 10px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></td>
                    <td><span class="label label-danger">{{ get_star($record->id,3) }} đánh giá</span></td>
                  </tr>
                  <tr>
                    <td style="width: 70%; padding-left: 10px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></td>
                    <td><span class="label label-info">{{ get_star($record->id,4) }} đánh giá</span></td>
                  </tr>
                  <tr>
                    <td style="width: 70%; padding-left: 10px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></td>
                    <td><span class="label label-success">{{ get_star($record->id,5) }} đánh giá</span></td>
                  </tr>
                </table>
                <br>
            </div>
        </div>

        <div class="price">
            <div class="price_sale">
               <span style="text-decoration:line-through;"> {{ number_format($record->price) }} đ</span> 
               <strong> {{ number_format($record->price - ($record->price * $record->discount)/100) }} đ</strong> 
            </div>
            <div class="ship">
                <img src="{{asset('frontend/image/chitietsanpham/clock-152067_960_720.png')}}">
                <div style="font-size: 16px">{!! $record->ship !!}</div>
            </div>
            <div class="promotion">
                <strong>Khuyến mãi</strong>
                <div class="promo">
                    <!-- <img src="{{ asset('frontend/image/chitietsanpham/icon-tick.png')}}"> -->
                    <div id="detailpromo">
                        {!! $record->promotion !!}
                    </div>
                </div>
            </div>
            <div class="policy">
                <div>
                    <!-- <img src="{{ asset('frontend/image/chitietsanpham/icon-baohanh.png')}}"> -->
                    {!! $record->warranty !!}
                </div>
            </div>
            <div class="order">
                <a href="{{ url('cart/buy/'.$record->id) }}" class="buy-now">
                    <b>
                        <i class="fa-solid fa-cart-plus"></i>Thêm vào giỏ hàng
                    </b>
                </a>
            </div>
        </div>
        <div class="product-info">
            <h2 style="font-size: 24px">Cấu hình</h2>
            {!! $record->content !!}
        </div>
    </div>

    
</div> 

<div class="fb-comments" data-href="http://localhost:8000/" data-width="100%" data-numposts="5"></div>

@endsection