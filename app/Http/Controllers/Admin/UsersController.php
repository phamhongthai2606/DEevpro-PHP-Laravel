<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//sử dụng Query Builder
use DB;
//sử dụng hàm mã hóa password
use Hash;
//sử dụng đối tượng Auth
use Auth;

class UsersController extends Controller
{
    //read
    public function read(Request $request){
        //->paginate(4) phân trang, phân 4 bản ghi trên một trang
        $data = DB::table("users")->orderBy("id","desc")->paginate(4);
        return view("admin.users.read",["data"=>$data]);
    }
    //update
    public function update($id){
        //lấy 1 bản ghi tương ứng với id truyền vào
        $record = DB::table("users")->where("id","=",$id)->first();
        //tạo biến $action để đưa vào thuộc tính action của thẻ form
        $action = url("admin/users/update-post/$id");
        return view("admin.users.form",["record"=>$record,"action"=>$action]);
    }
    //update-post
    public function updatePost(Request $request,$id){
        $name = $request->get("name");
        $password = $request->get("password");
        $address = $request->get("address");
        $birthday = $request->get("birthday");
        $gender = $request->get("gender");
        $phonenumber = $request->get("phonenumber");
        //update name
        DB::table("users")->where("id","=",$id)->update(["name"=>$name,"address"=>$address,"birthday"=>$birthday,"gender"=>$gender,"phonenumber"=>$phonenumber]);
        //nếu password không bằng rỗng thì update password
        if($password != ""){
            $password = Hash::make($password);
            DB::table("users")->where("id","=",$id)->update(["password"=>$password]);
        }
        return redirect(url("admin/users"));
    }
    //create
    public function create(){
        //tạo biến $action để đưa vào thuộc tính action của thẻ form
        $action = url("admin/users/create-post");
        return view("admin.users.form",["action"=>$action]);
    }
    //create-post
     public function createPost(Request $request){
        $id = $request->get("id");
        $name = $request->get("name");
        $email = $request->get("email");
        $password = $request->get("password");
        $address = $request->get("address");
        $birthday = $request->get("birthday");
        $gender = $request->get("gender");
        $phonenumber = $request->get("phonenumber");
        //mã hóa password
        $password = Hash::make($password);
        //kiểm tra nếu email chưa tồn tại trong csdl thì mới được insert
        $check = DB::table("users")->where("email","=",$email)->first();
        if(isset($check->email) == false){
            //insert name
            DB::table("users")->insert(["id"=>$id,"name"=>$name,"email"=>$email,"password"=>$password,"address"=>$address,"birthday"=>$birthday,"gender"=>$gender,"phonenumber"=>$phonenumber]); 
            return redirect(url("admin/users"));
        }
        else{
            return redirect(url("admin/users/create?notify=email-exists"));
        }
    }
    //delete
    public function delete($id){
        //xóa bản ghi
        $record = DB::table("users")->where("id","=",$id)->delete();
        return redirect(url("admin/users"));
    }
}
