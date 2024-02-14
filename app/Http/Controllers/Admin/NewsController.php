<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

//sử dụng Eloquent
//import class news vào đây (file model: news.php)
use App\Models\News;

class NewsController extends Controller
{
    //read
    public function read(Request $request){
        //->paginate(4) phân trang, phân 4 bản ghi trên một trang
        $data = news::orderBy("id","desc")->paginate(4);
        return view("admin.news.read",["data"=>$data]);
    }
    //update
    public function update($id){
        //lấy 1 bản ghi tương ứng với id truyền vào
        //->first() lấy 1 bản ghi
        $record = News::where("id","=",$id)->first();
        //tạo biến $action để đưa vào thuộc tính action của thẻ form
        $action = url("admin/news/update-post/$id");
        return view("admin.news.form",["record"=>$record,"action"=>$action]);
    }
    //update-post
    public function updatePost(Request $request,$id){
        $name = $request->get("name");
        $description = $request->get("description");
        $content = $request->get("content");
        $hot = $request->get("hot") != "" ? 1 : 0;
        //update name
        News::where("id","=",$id)->update(["name"=>$name,"description"=>$description,"content"=>$content,"hot"=>$hot,]);
        //nếu user chọn ảnh để upload
        if($request->hasFile("image")){
            //lấy ảnh cũ để xóa
            $old_image = news::where("id","=",$id)->first();
            if($old_image->image != null && file_exists("upload/news/".$old_image->image))
                unlink("upload/news/".$old_image->image);
            //lấy tên ảnh mới
            $image = time()."_". $request->file("image")->getClientOriginalName();
            //thực hiện upload file
            $request->file("image")->move("upload/news",$image);
            //update field image
            news::where("id","=",$id)->update(["image"=>$image]);
        }
        return redirect(url("admin/news"));
    }
    //create
    public function create(){
        //tạo biến $action để đưa vào thuộc tính action của thẻ form
        $action = url("admin/news/create-post");
        return view("admin.news.form",["action"=>$action]);
    }
    //create-post
    public function createPost(Request $request){
        $id = $request->get("id");
        $name = $request->get("name");
        $image = "";
        $description = $request->get("description");
        $content = $request->get("content");
        $hot = $request->get("hot") != "" ? 1 : 0;
        //nếu user chọn ảnh để upload
        if($request->hasFile("image")){
            //lấy tên ảnh mới
            $image = time()."_". $request->file("image")->getClientOriginalName();
            //thực hiện upload file
            $request->file("image")->move("upload/news",$image);
        }
        //update name
        News::insert(["id"=>$id,"name"=>$name,"image"=>$image,"description"=>$description,"content"=>$content,"hot"=>$hot]);
        return redirect(url("admin/news"));   
    }    
    //delete
    public function delete($id){
        //lấy ảnh cũ để xóa
        $old_image = News::where("id","=",$id)->first();
        if($old_image->image != null && file_exists("upload/news/".$old_image->image))
            unlink("upload/news/".$old_image->image);
        //xóa bản ghi
        $record = news::where("id","=",$id)->delete();
        return redirect(url("admin/news"));
    }
}
