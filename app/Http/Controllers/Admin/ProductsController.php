<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

//sử dụng Eloquent
//import class Products vào đây (file model: Products.php)
use App\Models\Products;

class ProductsController extends Controller
{
    //read
    public function read(Request $request){
        $key = $request->get("key");
        //->paginate(4) phân trang, phân 4 bản ghi trên một trang
        $data = Products::where("name","like","%$key%")->orderBy("id","desc")->paginate(10);
        return view("admin.products.read",["data"=>$data]);
    }
    //update
    public function update($id){
        //lấy 1 bản ghi tương ứng với id truyền vào
        //->first() lấy 1 bản ghi
        $record = Products::where("id","=",$id)->first();
        //tạo biến $action để đưa vào thuộc tính action của thẻ form
        $action = url("admin/products/update-post/$id");
        return view("admin.products.form",["record"=>$record,"action"=>$action]);
    }
    //update-post
    public function updatePost(Request $request,$id){
        $name = $request->get("name");
        $category_id = $request->get("category_id");
        $quantity = $request->get("quantity");
        $price = $request->get("price");
        $discount = $request->get("discount");
        $description = $request->get("description");
        $content = $request->get("content");
        $promotion = $request->get("promotion");
        $warranty = $request->get("warranty");
        $hot = $request->get("hot") != "" ? 1 : 0;
        $ship = $request->get("ship");
        //update name
        Products::where("id","=",$id)->update(["name"=>$name,"category_id"=>$category_id,"price"=>$price,"discount"=>$discount,"description"=>$description,"content"=>$content,"promotion"=>$promotion,"warranty"=>$warranty,"hot"=>$hot,"ship"=>$ship]);
        //nếu user chọn ảnh để upload
        if($request->hasFile("image")){
            //lấy ảnh cũ để xóa
            $old_image = Products::where("id","=",$id)->first();
            if($old_image->image != null && file_exists("upload/products/".$old_image->image))
                unlink("upload/products/".$old_image->image);
            //lấy tên ảnh mới
            $image = time()."_". $request->file("image")->getClientOriginalName();
            //thực hiện upload file
            $request->file("image")->move("upload/products",$image);
            //update field image
            Products::where("id","=",$id)->update(["image"=>$image]);
        }
        return redirect(url("admin/products"));
    }
    //create
    public function create(){
        //tạo biến $action để đưa vào thuộc tính action của thẻ form
        $action = url("admin/products/create-post");
        return view("admin.products.form",["action"=>$action]);
    }
    //create-post
    public function createPost(Request $request){
        $id = $request->get("id");
        $name = $request->get("name");
        $image = "";
        $category_id = $request->get("category_id");
        $quantity = $request->get("quantity");
        $price = $request->get("price");
        $discount = $request->get("discount");
        $description = $request->get("description");
        $content = $request->get("content");
        $promotion = $request->get("promotion");
        $warranty = $request->get("warranty");
        $hot = $request->get("hot") != "" ? 1 : 0;
        $ship = $request->get("ship");
        //nếu user chọn ảnh để upload
        if($request->hasFile("image")){
            //lấy tên ảnh mới
            $image = time()."_". $request->file("image")->getClientOriginalName();
            //thực hiện upload file
            $request->file("image")->move("upload/products",$image);
        }
        //update name
        Products::insert(["id"=>$id,"name"=>$name,"image"=>$image,"category_id"=>$category_id,"quantity"=>$quantity,"price"=>$price,"discount"=>$discount,"description"=>$description,"content"=>$content,"promotion"=>$promotion,"warranty"=>$warranty,"hot"=>$hot,"ship"=>$ship]);   
        return redirect(url("admin/products"));   
    }    
    //delete
    public function delete($id){
        //lấy ảnh cũ để xóa
        $old_image = Products::where("id","=",$id)->first();
        if($old_image->image != null && file_exists("upload/products/".$old_image->image))
            unlink("upload/products/".$old_image->image);
        //xóa bản ghi
        $record = Products::where("id","=",$id)->delete();
        return redirect(url("admin/products"));
    }
}
