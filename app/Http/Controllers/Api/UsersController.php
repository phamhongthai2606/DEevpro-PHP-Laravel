<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use DB;

class UsersController extends Controller
{
    //read
    public function read(Request $request){
        //->paginate(4) phân trang, phân 4 bản ghi trên một trang
        $data = DB::table("users")->orderBy("id","desc")->paginate(4);
        //hàm json_encode sẽ chuyển biến sang chuỗi json
        echo json_encode($data);
    }
}
