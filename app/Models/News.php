<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;
    //do trong table news có 2 trường create_at,update_at nên không cần thuộc tính timestamps ở đây
    //định nghĩa table sẽ focus đến
    protected $table = "news";
}


