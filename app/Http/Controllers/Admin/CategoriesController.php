<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

//sử dụng Eloquent
//import class Categories vào đây (file model: Categories.php)
use App\Models\Categories;

class CategoriesController extends Controller
{
    //read
    public function read(Request $request){
        //->paginate(4) phân trang, phân 4 bản ghi trên một trang
        $data = Categories::orderBy("id","desc")->where("parent_id","=","0")->paginate(4);
        return view("admin.categories.read",["data"=>$data]);
    }
    //update
    public function update($id){
        //lấy 1 bản ghi tương ứng với id truyền vào
        //->first() lấy 1 bản ghi
        $record = Categories::where("id","=",$id)->first();
        //tạo biến $action để đưa vào thuộc tính action của thẻ form
        $action = url("admin/categories/update-post/$id");
        return view("admin.categories.form",["record"=>$record,"action"=>$action]);
    }
    //update-post
    public function updatePost(Request $request,$id){
        $name = $request->get("name");
        $parent_id = $request->get("parent_id");
        $display_at_home_page = $request->get("display_at_home_page") != "" ? 1 : 0;
        //update name
        Categories::where("id","=",$id)->update(["name"=>$name,"parent_id"=>$parent_id,"display_at_home_page"=>$display_at_home_page]);
        return redirect(url("admin/categories"));
    }
    //create
    public function create(){
        //tạo biến $action để đưa vào thuộc tính action của thẻ form
        $action = url("admin/categories/create-post");
        return view("admin.categories.form",["action"=>$action]);
    }
    //create-post
    public function createPost(Request $request){
        $id = $request->get("id");
        $name = $request->get("name");
        $parent_id = $request->get("parent_id");
        $display_at_home_page = $request->get("display_at_home_page") != "" ? 1 : 0;
        //insert name
        Categories::insert(["id"=>$id,"name"=>$name,"parent_id"=>$parent_id,"display_at_home_page"=>$display_at_home_page]);
        return redirect(url("admin/categories"));   
    }    
    //delete
    public function delete($id){
        //xóa bản ghi
        $record = Categories::where("id","=",$id)->orWhere("parent_id","=",$id)->delete();
        return redirect(url("admin/categories"));
    }
}
