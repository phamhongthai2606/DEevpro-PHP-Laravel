<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB; //sử dụng Query Builder

class ProductsController extends Controller
{
    //trang danh muc san pham (click vao mot danh muc thi se hien thi cac san pham thuoc danh muc do)
    public function category(Request $request,$id){
        $order = $request->get("order");
        //lấy một bản ghi
        $rows = DB::table("products")->where("category_id","=",$id)->paginate(6);
        switch ($order) {
            case 'price_asc':
                $rows = DB::table("products")->where("category_id","=",$id)->orderBy("price","asc")->paginate(6);
                break;
            case 'price_desc':
                $rows = DB::table("products")->where("category_id","=",$id)->orderBy("price","desc")->paginate(6);
                break; 
            case 'name_asc':
                $rows = DB::table("products")->where("category_id","=",$id)->orderBy("name","asc")->paginate(6);
                break;    
            case 'name_desc':
                $rows = DB::table("products")->where("category_id","=",$id)->orderBy("name","desc")->paginate(6);
                break;       
        }        
        return view("frontend.products.category",["rows"=>$rows,"category_id"=>$id,"order"=>$order]);
    }    
    //chi tiet san pham
    public function detail(Request $request,$id){
        //lay mot san pham
        $record = DB::table("products")->where("id","=",$id)->first();
        //lay ten danh muc san pham
        $category = DB::table("categories")->where("id","=",$record->category_id)->first();
        $category_name = isset($category->name) ? $category->name : "";
        return view("frontend.products.detail",["record"=>$record,"category_name"=>$category_name]);
    }
    //đánh số sao sản phẩm
    public function rate(Request $request,$id){
        //lay bien star truyen tu url
        $star = $request->get("star");
        //insert ban ghi
        DB::table("rating")->insert(["product_id"=>$id,"star"=>$star]);
        return redirect(url("products/detail/$id"));
    }
    //tìm kiếm theo tên sản phẩm
    public function searchName(Request $request){
        $key = $request->get("key");
        $rows = DB::table("products")->where("name","like","%$key%")->orderBy("id","desc")->paginate(6);
        return view("frontend.products.search_name",["key"=>$key,"rows"=>$rows]);
    }
    public function searchAjax(Request $request){
        $key = $request->get("key");
        $rows = DB::table("products")->where("name","like","%$key%")->orderBy("id","desc")->skip(0)->take(6)->get();
        $str = "";
        foreach($rows as $row)
            $str .= "<li><a href='".url('products/detail/'.$row->id)."'><img src='".asset('upload/products/'.$row->image)."'> ".$row->name."</a></li>";
        echo $str;
    }
    //tìm kiếm theo giá
    public function searchPrice(Request $request){
        $fromPrice = $request->get("fromPrice");
        $toPrice = $request->get("toPrice");
        //->where("price",">=",$fromPrice)->where("price","<=",$toPrice) <=> sql: where price >= $fromPrice and price <= $toPrice
        //->where("price",">=",$fromPrice)->orWhere("price","<=",$toPrice) <=> sql: where price >= $fromPrice or price <= $toPrice
        $rows = DB::table("products")->where("price",">=",$fromPrice)->where("price","<=",$toPrice)->paginate(6);
        return view("frontend.products.search_price",["rows"=>$rows,"fromPrice"=>$fromPrice,"toPrice"=>$toPrice]);
    }
}
