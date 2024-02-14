<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//nếu định nghĩa route ở đây thì mặc định đã có tiền tố api ở đầu
//url: api/hello
//api là tiền tố mặc định của file api.php
Route::get("hello",function(){
    echo "<h1>Hello world</h1>";
});
//url: api/users
use App\Http\Controllers\Api\UsersController as ApiUsers;
Route::get("/users",[ApiUsers::class,"read"]);
