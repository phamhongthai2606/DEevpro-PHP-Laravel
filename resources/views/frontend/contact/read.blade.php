<!-- import file layout_trang_chu.blade.php vao day -->
@extends("frontend.layout_trang_chu")
@section("append-du-lieu")
<div class="row">
	<div class="col-lg-6">
		<!-- google map -->
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d119157.03841334587!2d105.63250829726562!3d21.046387999999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abb158a2305d%3A0x5c357d21c785ea3d!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyDEkGnhu4duIEzhu7Fj!5e0!3m2!1svi!2s!4v1689510931670!5m2!1svi!2s" style="border:0; width:100%; height: 400px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		<!-- /google map -->
	</div>
	<div class="col-lg-6">
		<div style="width:100%; height: 400px; overflow: scroll;">
			<!-- google form -->
			<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSc-HOx7CurwubRVoxNpJPN50OwI6eRdb0aFWilmpnZu70QZeQ/viewform?embedded=true" style="width:100%; height:1000px;" frameborder="0" marginheight="0" marginwidth="0">Đang tải</iframe>
			<!-- /google form -->
		</div>
	</div>
</div>
@endsection