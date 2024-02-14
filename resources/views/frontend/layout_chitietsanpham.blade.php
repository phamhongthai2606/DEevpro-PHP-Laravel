<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>HT Shop</title>
    <link rel="shortcut icon" href="./image/favicon.ico">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- css -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
    <link href="{{ asset('admin/css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" type='text/css' media='screen' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css'/>
    <link href='{{ asset('frontend/100/047/633/themes/517833/assets/styles.scss221b.css?1481775169361') }}' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type='text/css' href="{{ asset('frontend/slick/slick.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/css/style.css')}}">
    <link rel="stylesheet" href="{{ asset('frontend/css/trangchu.css')}}">
    <link rel="stylesheet" href="{{ asset('frontend/css/dangnhap.css')}}">    
    <link rel="stylesheet" href="{{ asset('frontend/css/chitietsanpham.css')}}">
    <!-- js -->
</head>
<body id="#top">
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v18.0" nonce="KtznJ2JH"></script>
    
    <!-- Chatbot -->
    <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
    <df-messenger
      intent="WELCOME"
      chat-title="Chatbot"
      agent-id="542dacd5-37ea-463b-8559-36ef05ee1c88"
      language-code="vi"
    >    
    </df-messenger>
    
    <div class="container">
        <!-- import file header.blade.php vào đây -->
        @include("frontend.header") 
    
        <main>
            @yield("append-du-lieu")           
        </main>

        <footer>
            <div class="about">
                <h3 class="title">Về HT Shop</h3>
                <div>
                    <ul>
                        <li>
                            <a href="./index.html">HT Shop</a>
                        </li>
                        <li>
                            <a href="">Giới thiệu</a>
                        </li>
                        <li>
                            <a href="">Chính sách bảo mật</a>
                        </li>
                        <li>
                            <a href="">Điều khoản sử dụng</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="about">
                <h3 class="title">Hỗ trợ khách hàng</h3>
                <div>
                    <ul>
                        <li>
                            <a href="">Hotline miễn phí</a>
                        </li>
                        <li>
                            <a href="">Tra cứu hóa đơn</a>
                        </li>
                        <li>
                            <a href="">Mua & giao nhận online</a>
                        </li>
                        <li>
                            <a href="">Quy định & hình thức thanh toán</a>
                        </li>
                        <li>
                            <a href="">Bảo hành & bảo trì</a>
                        </li>
                        <li>
                            <a href="">Đổi trả & hoàn tiền</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="about">
                <h3 class="title">Đơn vị vận chuyển</h3>
                <div>
                    <ul>
                        <li>
                            <a href="">Ahamove</a>
                        </li>
                        <li>
                            <a href="">Shoppee Express</a>
                        </li>
                        <li>
                            <a href="">Grab Express</a>
                        </li>
                        <li>
                            <a href="">Viettel Post</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="about">
                <h3 class="title">Hình thức thanh toán</h3>
                <div>
                    <ul>
                        <li>
                            <a href="">Tiền mặt</a>
                        </li>
                        <li>
                            <a href="">Thẻ ngân hàng</a>
                        </li>
                        <li>
                            <a href="">Momo</a>
                        </li>
                        <li>
                            <a href="">VNPay</a>
                        </li>
                        <li>
                            <a href="">ZaloPay</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="about">
                <h3 class="title">Địa chỉ</h3>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d119157.03841334587!2d105.63250829726562!3d21.046387999999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abb158a2305d%3A0x5c357d21c785ea3d!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyDEkGnhu4duIEzhu7Fj!5e0!3m2!1svi!2s!4v1689510931670!5m2!1svi!2s" width="240" height="150" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div>
                <a href="#top"><i class="fa-solid fa-arrow-up" id="goto-top-page"></i></a>
            </div>    
        </footer>
        
        <script src="{{asset('frontend//slick/jquery-3.7.1.min.js')}}"></script>
        <script src="{{asset('frontend/slick/slick.min.js')}}"></script>
        <script>
            $(document).ready(function(){
                $('.slider').slick({
                    // tự động chạy 
                    autoplay: true,
                    // custom lại button next và prev 
                    prevArrow: '<button type="button" class="slick-prev custom-prev"><i class="fa-solid fa-chevron-right"></i></button>',
                    nextArrow: '<button type="button" class="slick-next custom-next"><i class="fa-solid fa-chevron-left"></i></button>',
                    // số lượng slider trên 1 lần hiển thị 
                    slidesToShow:2,
                    // thời gian next sang  slider mới
                    speed:500, 
                    // next bao nhiêu slider 1 lần
                    slidesToScroll:1
                });
            });
        </script>
    </div>
</body>
</html>

