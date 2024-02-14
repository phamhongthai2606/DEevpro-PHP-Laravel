<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class NewsController extends Controller
{
    //read
    public function read(Request $request){
        //->paginate(4) phân trang, phân 4 bản ghi trên một trang
        $data = DB::table("news")->orderBy("id","desc")->paginate(3);
        return view("frontend.news.read",["data"=>$data]);
    }

    //chi tiet tin tức
    public function detail(Request $request,$id){
        //lay mot tin tức
        $record = DB::table("news")->where("id","=",$id)->first();
        return view("frontend.news.detail",["record"=>$record]);
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
