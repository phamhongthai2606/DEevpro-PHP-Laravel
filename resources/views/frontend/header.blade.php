<header>
    <div class="content">
        <div class="col-3"> 
            <div>
                <a href="{{ url('') }}">
                    <img class="logo" src="{{ asset('frontend/image/logo.jpg')}}">
                </a>
            </div>
        </div>
           
        <div class="col-3">
            <div class="search-header">
                <div class="input-search">
                    <div class="autocomplete" id="smart-search">
                        <input type="text" onkeyup="search();" value="" placeholder="Nhập từ khóa tìm kiếm" id="key" class="input-control" style="">
                        <button style="margin-top:3px; position: absolute; top:5px" type="submit">
                            <i class="fa fa-search" onclick="location.href='{{ url('products/search-name') }}?key='+document.getElementById('key').value;"></i> 
                        </button>
                        <div id="sub-search">
                            <ul>
                                <li>
                                    <a href="#">
                                        <img src=""> link 1
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src=""> link 1
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <style type="text/css">
                    #smart-search{position: relative;}
                    #sub-search{position: absolute; z-index: 1000; overflow: scroll; background: white; visibility: hidden; max-height: 250px; margin-top: 40px}
                    #sub-search ul{width: 550px; padding:0px; margin:0px; list-style: none;}
                    #sub-search ul li{border-bottom: 1px solid #dddddd;}
                    #sub-search img{width: 50px;}
                </style>
                <script type="text/javascript">
                    function search(){
                        var key = document.getElementById("key").value;
                        // kiểm tra xem jquery đã được load ở trang chưa bằng đoạn code sau (nếu chưa có thì cần phải load jquery)
                        // $(document).ready(function(){ alert('ok'); });
                        if(key != ""){
                            $("#sub-search").attr("style","visibility: visible");
                            //xóa các thẻ li để chuẩn bị đổ dữ liệu
                            $("#sub-search ul").empty();
                            //gọi hàm ajax để lấy dữ liệu
                            $.get("{{ url('products/search-ajax') }}?key="+key,function(result){               
                              $("#sub-search ul").append(result); 
                            });
                        }
                        else{
                            $("#sub-search").attr("style","visibility: hidden");
                        }
                    }
                </script>
                <!-- <div class="tags">
                    <strong>Từ khóa:</strong>
                    <a href="{{ url('')}}">Samsung</a>
                    <a>Iphone</a>
                    <a>Oppo</a>
                    <a>Huawei</a>
                    <a>Mobi</a>
                </div> -->
            </div>
        </div> 
        <?php 
        //muốn sử dụng class Cart ở đây thì phải import nó
        use App\Http\ShoppingCart\Cart;
        ?>
        <div class="col-6" style="margin-left: 0px;">
            <div class="row">
                @php
                    $customer_email = session()->get('customer_email');
                    //có thể dùng cách khác: $customer_email = Sesion::get('customer_email');
                @endphp
                @if(isset($customer_email))      
                    <div class="col-xs-12 col-sm-12 col-md-12 customer" style="display: flex; margin-left: 0px; font-size: 16px;">
                        <div style="width: 400px; margin-left: 60px">
                           <a href="#">Xin chào {{ $customer_email }}</a>&nbsp; &nbsp; 
                        </div> 
                        <div style="width: 150px; margin-left: -60px;">
                            <a href="{{ url('customers/logout') }}">Đăng xuất</a> 
                        </div>
                        <div class="cart">
                            <a href="{{ url('cart') }}">
                                <div class="wrapper-mini-cart"> 
                                    <span class="">
                                        <i class="fa fa-shopping-cart"></i>
                                    </span> 
                                    <a href="cart" style="display: flex; margin-left: 5px"> 
                                        <span class="mini-cart-count" style="margin-right: 5px;"> {{ Cart::cartNumber() }} </span> sản phẩm 
                                        <i class="fa fa-caret-down"></i>
                                    </a>
                                    <div class="content-mini-cart">
                                        <div class="has-items">
                                            <ul class="list-unstyled">
                                                @if(Cart::cartNumber() > 0)
                                                @foreach(Session::get('cart') as $item)
                                                <li class="clearfix" id="item-1853038">
                                                    <div class="image"> 
                                                        <a href="{{ url('products/detail/'.$item['id']) }}"> 
                                                            <img alt="{{ $item['name'] }}" src="{{ asset('upload/products/'.$item['image']) }}" title="{{ $item['name'] }}"> 
                                                        </a> 
                                                    </div>
                                                    <div class="info">
                                                        <h3>
                                                            <a href="{{ url('products/detail/'.$item['id']) }}">{{ $item['name'] }}</a>
                                                        </h3>
                                                    </div>
                                                    <div> 
                                                        <a href="{{ url('cart/remove/'.$item['id']) }}"> 
                                                            <i class="fa fa-times" style="margin-top: 20px;"></i>
                                                        </a> 
                                                    </div>
                                                </li>
                                                @endforeach
                                                @endif
                                            </ul>
                                        </div>
                                        <a href="{{ url('cart/checkout') }}" class="checkout">Thanh toán</a> 
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                                                            
                @else
                    <div class="col-xs-12 col-sm-12 col-md-12" style="display: flex; font-size: 16px; margin-left: 150px;"> 
                        <a href="{{ url('customers/login') }}" style="width: 200px; margin-right: -10px;">
                            <i class="fa-solid fa-right-to-bracket"></i>Đăng nhập
                        </a>
                        &nbsp; &nbsp;
                        <a href="{{ url('customers/register') }}" style="width: 200px;">
                            <i class="fa-solid fa-registered"></i>Đăng ký
                        </a>
                        <div class="cart" >
                            <a href="{{ url('cart') }}">
                                <div class="wrapper-mini-cart"> 
                                    <span class="">
                                        <i class="fa fa-shopping-cart"></i>
                                    </span> 
                                    <a href="{{ url('cart') }}" style="display: flex; margin-left: 5px;"> 
                                        <span class="mini-cart-count" style="margin-right: 4px;"> {{ Cart::cartNumber() }} </span> sản phẩm 
                                        <i class="fa fa-caret-down"></i>
                                    </a>
                                    <div class="content-mini-cart">
                                        <div class="has-items">
                                            <ul class="list-unstyled">
                                                @if(Cart::cartNumber() > 0)
                                                @foreach(Session::get('cart') as $item)
                                                <li class="clearfix" id="item-1853038">
                                                    <div class="image"> 
                                                        <a href="{{ url('products/detail/'.$item['id']) }}"> 
                                                            <img alt="{{ $item['name'] }}" src="{{ asset('upload/products/'.$item['image']) }}" title="{{ $item['name'] }}"> 
                                                        </a> 
                                                    </div>
                                                    <div class="info">
                                                        <h3>
                                                            <a href="{{ url('products/detail/'.$item['id']) }}">{{ $item['name'] }}</a>
                                                        </h3>
                                                    </div>
                                                    <div> 
                                                        <a href="{{ url('cart/remove/'.$item['id']) }}"> 
                                                            <i class="fa fa-times" style="margin-top: 20px;"></i>
                                                        </a> 
                                                    </div>
                                                </li>
                                                @endforeach
                                                @endif
                                            </ul>
                                        </div>
                                        <a href="{{ url('cart/checkout') }}" class="checkout">Thanh toán</a> 
                                    </div>
                                </div>
                            </a>
                        </div> 
                    </div>
                @endif
            </div>
        </div>
    </div>
</header>

<nav>
    <ul class="menu_main">
        <li>
            <a href="{{ url('') }}">Trang chủ</a>
        </li>
        <li>
            <a href="">Sản phẩm</a>
            <div class="sub-menu">
                <ul>
                    @php
                      //lay cac ban ghi co parent_id = 0
                      $categories = DB::table("categories")->where("parent_id","=","0")->orderBy("id","desc")->get();
                    @endphp
                    @foreach($categories as $row)
                    <li>
                        <a href="{{ url('products/category/'.$row->id) }}">{{ $row->name }}</a>
                    </li>
                    @php
                      //lay cac danh muc con
                      $categories_sub = DB::table("categories")->where("parent_id","=",$row->id)->orderBy("id","desc")->get();
                    @endphp
                        @foreach($categories_sub as $row_sub)
                            <li style="padding-left:20px;">
                                <a href="{{ url('products/category/'.$row_sub->id) }}">{{ $row_sub->name }}</a>
                            </li>
                        @endforeach
                    @endforeach
                </ul>
            </div>
        </li>
        <li>
            <a href="{{ url('news') }}">Tin tức</a>
            <!-- <div class="sub-menu">
                <ul>
                    
                </ul>
            </div> -->
            
        </li>
        <li>
            <a href="">Giới thiệu</a>
        </li>
        <li>
            <a href="{{ url('contact') }}">Liên hệ</a>
        </li>
        <li>
            <a href="">Tuyển dụng</a>
        </li>
        <li>
            <a href="">Bảo hành</a>
        </li>
    </ul>
</nav>

<div class="slider">
    <div class="slider-video">
        <div class="item-video">
            <a href="">
                <img src="{{ asset('frontend/image/banners/banner1.png')}}" width="100%">  
            </a> 
        </div>
    </div> 

    <div class="slider-video">
        <div class="item-video">
            <a href="">
                <img src="{{ asset('frontend/image/banners/banner2.png')}}" width="100%">
            </a>  
        </div>
    </div> 

    <div class="slider-video">
        <div class="item-video">
            <a href="">
                <img src="{{ asset('frontend/image/banners/banner3.png')}}" width="100%">
            </a>
        </div>
    </div> 
</div>