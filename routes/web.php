<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
/*
    - Chạy laravel ở cổng 8000: php artisan serve
    - Tạo controller trong thư mục admin: php artisan make:controller Admin\TenController
    - Tạo model: php artisan make:model Ten
    - Tạo view trong thư mục admin: php artisan make:view admin\ten
    - Tạo middleware: php artisan make:middleware Ten
    - Tạo bảng: + php artisan make:migration create_staff_table --create staff
                + php artisan migrate  
*/

//login
Route::get('admin/login', function () {
    //echo Hash::make("HongThai2606");
    //kiểm tra nếu user đã login trước đó rồi thì di chuyển đến url admin/home
    if(isset(Auth::user()->email) != false)
        return redirect(url('admin/home'));
    return view('admin.login.read');
});

Route::post('admin/login-post', function () {
    //sử dụng đối tượng Request::get để lấy dữ liệu truyền theo kiểu post, get
    $email = Request::get("email");
    $password = Request::get("password");
    //sử dụng đối tượng Auth để kiểm tra đăng nhập
    if(Auth::attempt(["email"=>$email,"password"=>$password])){
        //nếu đăng nhập thành công thì di chuyển đang trang home của admin
        return redirect(url('admin/home'));
    }
    else{
        //nếu đăng nhập chưa thành công thì hiển thị thông báo thông qua biến notify
        return redirect(url('admin/login?notify=invalid'));
    }
});

//logout
Route::get('admin/logout', function () {
    //gọi hàm logout của đối tượng Auth
    Auth::logout();
    return redirect(url('admin/login'));
});

//Admin - muốn truy cập các url admin thì user cần đăng nhập (kiểm tra đăng nhập qua middleware check-login)
Route::get('admin/home', function () {
    return view('admin.home.read');
})->middleware("check-login");

//CRUD users
use App\Http\Controllers\Admin\UsersController;
Route::get('admin/users',[UsersController::class,'read'])->middleware("check-login");
Route::get('admin/users/update/{id}',[UsersController::class,'update'])->middleware("check-login");
Route::post('admin/users/update-post/{id}',[UsersController::class,'updatePost'])->middleware("check-login");
Route::get('admin/users/create',[UsersController::class,'create'])->middleware("check-login");
Route::post('admin/users/create-post',[UsersController::class,'createPost'])->middleware("check-login");
Route::get('admin/users/delete/{id}',[UsersController::class,'delete'])->middleware("check-login");

//CRUD Categories
use App\Http\Controllers\Admin\CategoriesController;
Route::get('admin/categories',[CategoriesController::class,'read'])->middleware("check-login");
Route::get('admin/categories/update/{id}',[CategoriesController::class,'update'])->middleware("check-login");
Route::post('admin/categories/update-post/{id}',[CategoriesController::class,'updatePost'])->middleware("check-login");
Route::get('admin/categories/create',[CategoriesController::class,'create'])->middleware("check-login");
Route::post('admin/categories/create-post',[CategoriesController::class,'createPost'])->middleware("check-login");
Route::get('admin/categories/delete/{id}',[CategoriesController::class,'delete'])->middleware("check-login");

use App\Http\Controllers\Admin\ProductsController;
Route::get('admin/products',[ProductsController::class,'read'])->middleware("check-login");
Route::get('admin/products/update/{id}',[ProductsController::class,'update'])->middleware("check-login");
Route::post('admin/products/update-post/{id}',[ProductsController::class,'updatePost'])->middleware("check-login");
Route::get('admin/products/create',[ProductsController::class,'create'])->middleware("check-login");
Route::post('admin/products/create-post',[ProductsController::class,'createPost'])->middleware("check-login");
Route::get('admin/products/delete/{id}',[ProductsController::class,'delete'])->middleware("check-login");

use App\Http\Controllers\Admin\NewsController;
Route::get('admin/news',[NewsController::class,'read'])->middleware("check-login");
Route::get('admin/news/update/{id}',[NewsController::class,'update'])->middleware("check-login");
Route::post('admin/news/update-post/{id}',[NewsController::class,'updatePost'])->middleware("check-login");
Route::get('admin/news/create',[NewsController::class,'create'])->middleware("check-login");
Route::post('admin/news/create-post',[NewsController::class,'createPost'])->middleware("check-login");
Route::get('admin/news/delete/{id}',[NewsController::class,'delete'])->middleware("check-login");

//Orders -> danh sách đơn hàng
use App\Http\Controllers\Admin\OrdersController;
Route::get('admin/orders',[OrdersController::class,'read'])->middleware("check-login");
Route::get('admin/orders/detail/{id}',[OrdersController::class,'detail'])->middleware("check-login");
//update tình trạng đơn hàng thành đã giao hàng
Route::get('admin/orders/update/{id}',[OrdersController::class,'update'])->middleware("check-login");

//Customers Admin
use App\Http\Controllers\Admin\CustomersController;
Route::get('admin/customers',[CustomersController::class,'read'])->middleware("check-login");

//Frontend
//Add các controller của phần này
use App\Http\Controllers\Frontend\HomeController;
//do ở bên trên đã có class ProductsController rồi, vì vậy ở đây phải đặt thành một tên khác (do ở đây cũng tạo class là ProductsController, nếu không định nghĩa thành tên khác thì sẽ trùng với bên trên -> laravel sẽ báo lỗi)
use App\Http\Controllers\Frontend\ProductsController as ProductsFrontend;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\CustomersController as CustomersFrontend;
//do trong Admin đã có NewsController nên ở đây cũng phải đặt tên khác
use App\Http\Controllers\Frontend\NewsController as NewsFrontend;
use App\Http\Controllers\Frontend\PaymentController;
//trang chủ
Route::get("",[HomeController::class,"read"]);
//trang danh mục
Route::get("/products/category/{id}",[ProductsFrontend::class,"category"]);
//trang chi tiết
Route::get("/products/detail/{id}",[ProductsFrontend::class,"detail"]);
//thêm sản phẩm vào giỏ hàng
Route::get("/cart/buy/{id}",[CartController::class,"buy"]);
//cập nhật sản phẩm trong giỏ hàng
Route::post("/cart/update",[CartController::class,"update"]);
//xóa sản phẩm khỏi giỏ hàng
Route::get("/cart/remove/{id}",[CartController::class,"remove"]);
//xóa toàn bộ sản phẩm khỏi giỏ hàng
Route::get("/cart/destroy",[CartController::class,"destroy"]);
//thanh toán giỏ hàng
Route::get("/cart/checkout",[CartController::class,"checkout"]);
//hiển thị danh sách sản phẩm trong giỏ hàng
Route::get("/cart",[CartController::class,"read"]);
//đăng ký customer
Route::get("/customers/register",[CustomersFrontend::class,"register"]);
Route::post("/customers/register-post",[CustomersFrontend::class,"registerPost"]);
//đăng nhập customer
Route::get("/customers/login",[CustomersFrontend::class,"login"]);
Route::post("/customers/login-post",[CustomersFrontend::class,"loginPost"]);
//đăng xuất customer
Route::get("/customers/logout",[CustomersFrontend::class,"logout"]);
//đánh số sao sản phẩm
Route::get("/products/rate/{id}",[ProductsFrontend::class,"rate"]);
//tìm kiếm theo mức giá
Route::get("/products/search-price",[ProductsFrontend::class,"searchPrice"]);
//tìm kiếm theo tên sản phẩm
Route::get("/products/search-name",[ProductsFrontend::class,"searchName"]);
//tìm kiếm sử dụng ajax
Route::get("/products/search-ajax",[ProductsFrontend::class,"searchAjax"]);
//danh sách tin tức
Route::get("/news",[NewsFrontend::class,"read"]);
//chi tiết tin tức
Route::get("/news/detail/{id}",[NewsFrontend::class,"detail"]);
//liên hệ
use App\Http\Controllers\Frontend\ContactController;
Route::get("/contact",[ContactController::class,"read"]);
//thanh toán online
// Route::post("/vnpay_payment",[PaymentController::class,"vnpay_payment"]);
Route::post('/vnpay_payment', [PaymentController::class, 'vnpay_payment']);


