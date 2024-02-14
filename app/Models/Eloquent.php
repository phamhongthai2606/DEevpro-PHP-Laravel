<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Eloquent extends Model
{
    use HasFactory;
    //định nghĩa table mà class này sẽ truy cập
    protected $table = "test";
}
