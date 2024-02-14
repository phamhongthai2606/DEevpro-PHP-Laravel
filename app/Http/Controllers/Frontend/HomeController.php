<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

//sử dụng query builder
use DB;

class HomeController extends Controller
{
    //trang chu
    public function read(){
        //lấy 10 sản phẩm nổi bật
        $hot_products = DB::table("products")->where("hot","=","1")->orderBy("id","desc")->offset(0)->take(10)->get();
        //lấy các danh mục hiển thị ở trang chủ (display_at_home_page = 1)
        $categories = DB::table("categories")->where("display_at_home_page","=","1")->orderBy("id","desc")->get();
        //lấy 6 tin tức
        $news = DB::table("news")->where("hot","=","1")->orderBy("id","desc")->offset(0)->take(6)->get();
        return view("frontend.home.read",["hot_products"=>$hot_products,"categories"=>$categories,"news"=>$news]);
    }  

    //đánh số sao sản phẩm
    public function rate(Request $request,$id){
        //lay bien star truyen tu url
        $star = $request->get("star");
        //insert ban ghi
        DB::table("rating")->insert(["product_id"=>$id,"star"=>$star]);
        return redirect(url("home/detail/$id"));
    }   
}
