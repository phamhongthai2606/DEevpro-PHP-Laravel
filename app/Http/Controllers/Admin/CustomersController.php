<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//sử dụng Query Builder
use DB;

class CustomersController extends Controller
{
    //read
    public function read(Request $request){
        //->paginate(4) phân trang, phân 4 bản ghi trên một trang
        $data = DB::table("customers")->orderBy("id","desc")->paginate(4);
        return view("admin.customers.read",["data"=>$data]);
    }
}
