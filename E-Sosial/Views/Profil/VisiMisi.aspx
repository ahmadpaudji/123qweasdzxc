<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | Profil - Visi dan Misi</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div id="contentBk">
		<div id="content" class="clearfix">
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
					<!-- Profil -->
					<h3>Profil</h3><br>
					<div class="box">
						<a href="#"><h4>VISI MISI DINAS SOSIAL KOTA BANDUNG</h4></a>
						<div class="boxInfo examInfo">
							<ul>
								<li class="proExm"><a href="#">Admin</a></li>
								<li class="dateExm">8 Maret 2014</li>
								<li style="background-position: -30px -200px;"></li>
								<li style="background-position: -30px -200px;"></li>
							</ul>
							<div> <!-- Visi -->
								<h3>Visi</h3>
								<p>Berdasarkan hal tersebut, maka Visi Dinas Sosial Kota Bandung adalah</p>
                                
								<p style="text-align:justify;">"Kesejahteraan Sosial dari, oleh, dan untuk Masyarakat menuju Bandung yang Bermartabat " </p>
                                
                                <!-- Misi -->
								<h3>Misi</h3>
                               <p>Berdasarkan Visi Dinas Sosial Kota Bandung tersebut di atas, maka Dinas Sosial Kota Bandung memiliki misi sebagai berikut :</p> 
                                
								<ol class="cList arrow1Li">
									<li style="display:block;text-align:justify;">Mewujudkan kesejahteraan sosial melalui peningkatan partisipasi sosial dan masyarakat, dimana terdapat peran aktif dari masyarakat dalam penanganan masalah kesejahteraan sosial secara komprehensif.</li>
                                    
									<li style="display:block;text-align:justify;">Mewujudkan kesejahteraan sosial melalui peningkatan rehabilitasi sosial guna memulihkan ketidakberdayaan masayarakat dalam melaksanakan fungsi sosialnya.</li>
                                    
									<li style="display:block;text-align:justify;">Mewujudkan kesejahteraan sosial melalui peningkatan pelayanan sosial, yang mengandung pengertian optimalisasi pelayanan terhadap Penyandang Masalah Kesejahteraan Sosial (PMKS).</li>
                                    
									<li style="display:block;text-align:justify;">Mewujudkan kesejahteraan sosial melalui peningkatan terhadap pembinaan rawan sosial keluarga dan anak.</li>
                                    
								
								</ol>
								<p style="text-align:right;">Link : <a href="<%: Url.Content("~/assets/public/file/VISI_MISI_DINAS_SOSIAL_KAB._BANDUNG_.pdf") %>">Download </a></p>
							</div>
						</div>
					</div>
				</div> <!-- END  -->
			</div> <!-- End Clear 1 -->
		</div> <!-- End Content .Clearfix -->
	</div> <!-- End ContentBk -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptContent" runat="server">
</asp:Content>
