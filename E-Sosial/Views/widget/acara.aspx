<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<h3>EVENT</h3>
<div class="arrows"></div>
<div class="cContent clearfix rotator">
	<ul class="slides">
		<li>
			<div class="post">
				<a href="#"><h5>Bakti Sosial</h5></a><br>
				<img src="<%: Url.Content("~/assets/public/img/other/news1.png") %>" alt="">
				<div class="info"> 
					<p1>Baksos di kelurahan Sukasari</p1>
				</div>
			</div><br>
			<div class="post">
				<a href="#"><h5>Pelatihan</h5></a><br>
				<img src="<%: Url.Content("~/assets/public/img/other/news2.png") %>" alt="">
				<div class="info"> 
					<p1>Training Public Speaking</p1>
				</div>
			</div><br><br>
			<div class="post">
				<a href="#"><h5>Sekolah Pintar</h5></a><br>
				<img src="<%: Url.Content("~/assets/public/img/other/news3.png") %>" alt="">
				<div class="info"> 
					<p1>Sekolah Pintar, Membaca itu penting</p1>
				</div>
			</div>
		</li>
	</ul>
</div>