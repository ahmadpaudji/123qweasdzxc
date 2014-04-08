<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | Dinsos Kota Bandung</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div id="contentBk">
		<div id="content" class="clearfix">
		<!-- ================  SLIDER ======================= --> 
			<div id="homeSlider" class="clearfix flexslider">
				<div class="thumbs"></div>                
				<ul class="slides">
					<li data-thumb="<%: Url.Content("~/assets/public/img/slider/1st_thumb.jpg") %>"><img src="<%: Url.Content("~/assets/public/img/slider/1st.jpg") %>" alt="Slide 1"></li>
					<li data-thumb="<%: Url.Content("~/assets/public/img/slider/2nd_thumb.jpg") %>"><img src="<%: Url.Content("~/assets/public/img/slider/2nd.jpg") %>" alt="Slide 2"></li>
					<li data-thumb="<%: Url.Content("~/assets/public/img/slider/3rd_thumb.jpg") %>"><img src="<%: Url.Content("~/assets/public/img/slider/3rd.jpg") %>" alt="Slide 3"></li>
                    
				</ul>
				<ul class="captions">
					<li>
						<h3>Dinas Sosial Kota Bandung</h3>
						<p>Website resmi Dinas Sosial Kota Bandung ini dibuat sebagai pelayanan kepada masyarakat kota Bandung untuk dapat melihat aktifitas dan informasi kegiatan yang ada di Dinsos kota Bandung.</p>
                        
					</li>
					<li>
						<h3>Bandung<strong> JUARA</strong></h3>
						<p>Dengan semangat hari jadi ke 203, kita wujudkan Bandung Juara</p>
					</li>
					<li>
						<h3>Misi Dinas Sosial Kota Bandung</h3>
						<p>Mewujudkan kesejahteraan sosial melalui peningkatan partisipasi sosial dan masyarakat, dimana terdapat peran aktif dari masyarakat dalam penanganan masalah kesejahteraan sosial </p>
					</li>
				</ul>
			</div>
            
			<div class="wrapper" style="margin-left:0px;">
				<div class="clear"></div>
				<!-- ================  LEFT ======================= -->
				<div class=" column c-1 clearfix">
					<% Html.RenderAction("kepalaDinsos", "Widget"); %>
					<% Html.RenderAction("programRelawan", "Widget"); %>
					<% Html.RenderAction("kategoriBerita", "Widget"); %>
					<div class="clearfix">&nbsp;</div>
					<h3>Donasi Bencana</h3>
					<div class="cContent">
						<a href="#">
							<img class="imgBorder" src="<%: Url.Content("~/assets/public/img/other/img-donasi.png") %>" alt="">
						</a>
						<a href="http://twitter.com/dinsos_bdg" target="_blank">
							<img class="imgBorder" src="<%: Url.Content("~/assets/public/img/other/twitter.png") %>" alt="">
						</a>
						<a href="http://lapor.ukp.go.id" target="_blank">
							<img class="imgBorder" src="<%: Url.Content("~/assets/public/img/other/lapor.png") %>" alt="">
						</a>
					</div>	
					<% Html.RenderAction("alamat", "Widget"); %>
				</div>
				<!-- ================  MIDDLE ======================= --> 
				<div class="blog column c-2 clearfix">
					<!-- NEWS -->
					<h3>Berita Terkini</h3><br>
					<% Html.RenderAction("listBerita", "Berita", new { s = 0, c = 3 }); %>
                    
                    <ul class="pgNr">
						<li><a href="#"> 1</a></li>
						<li><a href="#"> 2</a></li>
						<li><a href="#"> 3</a></li>
						<li><a href="#"> 4</a></li>
						<li><a href="#"> ></a></li>
					</ul>


					<div class="box">
						<a href="#"><h4>Donasi Bantuan Bencana</h4></a>
						<div class="boxInfo examInfo">
							<div>
								<table>
									<thead>
										<tr>
											<th>No</th>
											<th>Keterangan</th>
											<th>Lokasi</th>
											<th>Aksi</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Kebakaran</td>
											<td>kecamatan xxx</td>
											<td><a href="#"><button>Donasi</button></a></td>
										</tr>
                                        <tr>
											<td>2</td>
											<td>Kebakaran</td>
											<td>kecamatan xxx</td>
											<td><a href="#"><button>Donasi</button></a></td>
										</tr>        
                                        <tr>
											<td>3</td>
											<td>Kebakaran</td>
											<td>kecamatan xxx</td>
											<td><a href="#"><button>Donasi</button></a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div> <!-- END  -->
			</div> <!-- End Clear 1 -->
			<div class="clearfix"></div>
			<div class="wrapper"  style="clear:both">
				<div class="column c-3 clearfix">
					<div class="box">
						<h5>MOU CSR</h5>
						<div class="boxInfo">
							<a title="2014-03-20 15.47.45 Bantuan bencana bg kel.Pasteur, kel.Sindangjaya, kel.Sukaluyu3" class="gHover" href="<%: Url.Content("~/assets/public/img/events/foto_4.jpg") %>" rel="lightbox"><img class="fwidth" src="<%: Url.Content("~/assets/public/img/events/foto_4.jpg") %>" alt=""></a>
						</div>
					</div>
				</div>
				<div class="column c-3 clearfix">
					<div class="box">
						<h5>Penyuluhan</h5>
						<div class="boxInfo">
							<a title="Penyampaian bantuan masyarakat Kota Bdg kpd Pemkab Cianjur " class="gHover" href="<%: Url.Content("~/assets/public/img/events/foto_1.jpg") %>" rel="lightbox"><img class="fwidth" src="<%: Url.Content("~/assets/public/img/events/foto_1.jpg") %>" alt=""></a>
						</div>
					</div>
				</div>
				<div class="column c-3 clearfix">
					<div class="box">
						<h5>Bantuan Bencana</h5>
						<div class="boxInfo">
							<a title="2014-03-20 15.47.45 Bantuan bencana bg kel.Pasteur, kel.Sindangjaya, kel.Sukaluyu3" class="gHover" href="<%: Url.Content("~/assets/public/img/events/foto_2.jpg") %>" rel="lightbox"><img class="fwidth" src="<%: Url.Content("~/assets/public/img/events/foto_2.jpg") %>" alt=""></a>
						</div>
					</div>
				</div>
				<div class="column c-3 clearfix">
					<div class="box">
						<h5>Rapat Orsos</h5>
						<div class="boxInfo">
							<a title="Penyampaian bantuan masyarakat Kota Bdg kpd Pemkab Cianjur " class="gHover" href="<%: Url.Content("~/assets/public/img/events/foto_3.jpg") %>" rel="lightbox"><img class="fwidth" src="<%: Url.Content("~/assets/public/img/events/foto_3.jpg") %>" alt=""></a>
						</div>
					</div>
				</div>
				<div class="column c-3 clearfix">
					<div class="box">
						<h5>Kunjungan RPA</h5>
						<div class="boxInfo">
							<a title="2014-03-20 15.47.45 Kunjunagn RPA" class="gHover" href="<%: Url.Content("~/assets/public/img/events/foto_5.jpg") %>" rel="lightbox"><img class="fwidth" src="<%: Url.Content("~/assets/public/img/events/foto_5.jpg") %>" alt=""></a>
						</div>
					</div>
				</div>
			</div> 
		</div> <!-- End Content .Clearfix -->
	</div> <!-- End ContentBk -->
</asp:Content>
