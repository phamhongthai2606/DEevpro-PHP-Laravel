<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    use HasFactory;
    //trong table Categories ko có 2 trường create_at, update_at vì vậy phải disable nó ở đây( nếu ko khai báo thì khi insert hoặc update laravel sẽ tự động điền dữ liệu vào 2 trường này -> khi ko có 2 trường đó thì sẽ báo lỗi)
    public $timestamps = false;
    //khai báo table trong csdl để model ánh xạ đến
    protected $table = "categories";
}

