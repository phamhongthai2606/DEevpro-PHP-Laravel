<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
//muốn sử dụng đối tượng Auth thì phải khai báo dòng dưới
use Auth;

class CheckLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        //echo Auth::user()->email;
        //kiểm tra nếu email không tồn tại có nghĩa là user chưa đăng nhập
        if(isset(Auth::user()->email) == false)
            return redirect(url("admin/login"));
        return $next($request);
    }
}
