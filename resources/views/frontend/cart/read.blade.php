@extends('frontend.layout_giohang')
@section('append-du-lieu')
<?php 
	//muốn sử dụng class Cart ở đây thì phải import nó
	use App\Http\ShoppingCart\Cart;
 ?>
<h1>Giỏ hàng</h1> 
@if(Cart::cartNumber() > 0)
<div class="template-cart">
          <form action="{{ url('cart/update') }}" method="post">
            <!-- muon lay duoc du lieu sau khi submit form thi phai co tag sau -->
            @csrf
            <div class="products-cart" style="font-size: 16px">
                <div class="title">
                  <div class="image">Hình ảnh</div>
                  <div class="image">Tên sản phẩm</div>
                  <div class="image">Giá</div>
                  <div class="image">Số lượng</div>
                  <div class="image">Thành tiền</div>
                  <div class="image" style="border-right: 1px solid black;">Thao tác</div>
                </div>
            </div>
            @foreach(Session::get("cart") as $item)
              <div class="products-cart" style="font-size: 16px">
                <div class="cart-desc">
                  <div class="image1">
                    <a href="{{ url('products/detail/'.$item['id']) }}"> <img src="{{ asset('upload/products/'.$item['image']) }}" title="{{ $item['name'] }}" class="img-responsive"> </a>
                  </div>
                  <div class="image1">
                    <a href="{{ url('products/detail/'.$item['id']) }}">{{ $item['name'] }}</a>
                  </div>
                  <div class="image1">{{ number_format($item['price']) }} đ</div>
                  <div class="image1">
                    <input type="number" id="qty" min="0" class="input-control" value="{{ $item['quantity'] }}" name="product_{{ $item['id'] }}" required="Không thể để trống" style="width: 100px;">
                  </div>
                  <div class="image1" data-total-price="">
                    {{ number_format($item['price'] - ($item['price']*$item['discount'])/100) }}₫
                  </div>
                  <div class="image1" style="border-right: 1px solid black;">
                    <a href="{{ url('cart/remove/'.$item['id']) }}" data-id="2479395">
                      <i class="fa fa-trash"></i>
                    </a>
                  </div>
                </div>   
            </div>
            @endforeach
            @if(Cart::cartNumber() > 0)
              <div class="products-cart">
                <tfoot>
                  <tr>
                    <td colspan="6">
                      <a href="{{ url('cart/destroy') }}" class="button pull-left" style="margin-right: 740px; width: 250px; color: white;">Xóa toàn bộ</a> 
                      <input type="submit" class="button pull-right" value="Cập nhật" style="width: 250px;  color: white;">
                      <a href="{{ url('') }}" class="button pull-right" style="width: 250px; color: white; margin-left: 0px;">Tiếp tục mua hàng</a>
                    </td>
                  </tr>
                </tfoot>
              </div>
            @endif
          </form>

          @if(Cart::cartNumber() > 0)
          <div class="total-cart" style="margin-top: 60px"> Tổng tiền thanh toán:
            {{ number_format(Cart::cartTotal()) }} đ <br>
            <form action={{ url('/vnpay_payment') }} method="POST" style="margin-top: -10px;">
              @csrf
              <a href="{{ url('cart/checkout') }}" class="button" style="color: white;">Thanh toán bằng tiền mặt</a>
              <input type="hidden" name="total" value="{{ number_format(Cart::cartTotal()) }} đ">
              <button type="submit" class="button" style="color: white;">Thanh toán bằng VNPAY</a>
            </form> 
          </div>
          @endif
        </div>
@else
<h1>Chưa có sản phẩm nào trong giỏ hàng</h1>
@endif
@endsection