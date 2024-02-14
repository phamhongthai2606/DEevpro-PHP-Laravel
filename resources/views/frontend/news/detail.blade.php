@extends("frontend.layout_danhmucsanpham")
@section("append-du-lieu")
<div class="menu-left">     
  <div class="panel panel-default" style="margin-top:15px; border: 1px solid black;">
    <div class="panel-heading" style="border-bottom: 1px solid black; font-size: 14px;"> Tìm theo mức giá </div>
    <div class="panel-body" style="padding:0px; margin:0px;">
      <ul class="list-group" style="border:0px;padding:0px; margin:0px;">
        <li class="list-group-item" style="border:0px; font-size: 14px">Giá từ &nbsp;&nbsp;
          <input type="number" min="0" value="0" id="fromPrice" class="form-control" style="border: 1px solid black; font-size: 14px;" />
        </li>
        <li class="list-group-item" style="border:0px; font-size: 14px">Đến &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="number" min="0" value="0" id="toPrice" class="form-control" style="border: 1px solid black; font-size: 14px" />
        </li>
        <li class="list-group-item" style="border:0px; text-align:center">
          <input type="button" class="btn btn-warning" value="Tìm sản phẩm" onclick="location.href = '{{ url('products/search-price') }}?fromPrice=' + document.getElementById('fromPrice').value + '&toPrice=' + document.getElementById('toPrice').value;" />
        </li>
      </ul>
    </div>
  </div>
</div>
        

<div class="menu-right">
	<div class="category-name" style="width: 100%; margin-top: 15px;">
		<h1 style="font-size: 30px; text-align: center; margin-top: 5px; padding: 5px 0 5px 0">Chi tiết tin tức</h1>
	</div>

	<div style="margin-top: -20px; margin-bottom: -30px;">
		<div>
			<img src="{{ asset('upload/news/'.$record->image) }}" style="width: 100%; height: 500px">
		</div>
    <div style="margin-top: 10px; margin-bottom: 20px; font-size: 26px; text-align: center;">
      <p style="">{{ $record->name }}</p>
    </div> 
    <div style="margin-top: -10px; margin-bottom: 20px; font-size: 20px;">
      <p style="">{!! $record->description !!}</p>
    </div> 
    <div style="margin-top: -10px; font-size: 20px;">
      <p>{!! $record->content !!}</p>
    </div>     
	<div>
</div>           
@endsection