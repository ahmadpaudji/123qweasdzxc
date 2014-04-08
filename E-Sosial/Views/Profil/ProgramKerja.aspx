<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | Profil - Program Kerja</asp:Content>

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
						<a href="#"><h4>Program Kerja</h4></a>
						<div class="boxInfo examInfo">
							<ul>
								<li class="proExm"><a href="#"><%: Model.user_nama %></a></li>
								<li class="dateExm"><%: Model.content_time %></li>
								<li style="background-position: -30px -200px;"></li>
								<li style="background-position: -30px -200px;"></li>
							</ul>
							<div>
								<% if (ViewBag.file_url != null) { %>
								<img src="<%: Url.Content(ViewBag.file_url) %>" />
								<% } %>
								<%: Html.Raw(Model.content) %>
                                <!--
								<ol class="cList arrow1Li">
									<li style="display:block;text-align:justify;">Kegiatan Penyusunan Laporan Capaian Kinerja dan Ikhtisar Realisasi Kinerja SKPD</li>
                                    
									<li style="display:block;text-align:justify;">Kegiatan Pelaksanaan KIE Konseling dan Kampanye Sosial bagi Penyandang Masalah Kesejahteraan Sosial (PMKS)</l                                   
									><li style="display:block;text-align:justify;">Kegiatan Penyusunan Pelaporan Keuangan Akhir Tahun</li>                       
									<li style="display:block;text-align:justify;">Kegiatan Penyusunan Kebijakan Pelayanan dan Kampanye Sosial bagi Penyandang Masalah Kesejahteraan Sosial (PMKS)</li>
                                    <li style="display:block;text-align:justify;">Kegiatan Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik </li>
                                    <li style="display:block;text-align:justify;">Kegiatan Penyediaan Jasa Kebersihan Kantor</li>                       
									<li style="display:block;text-align:justify;">Kegiatan Penyediaan Alat Tulis Kantor</li>
                                    <li style="display:block;text-align:justify;">Kegiatan Penyediaan Barang Cetakan dan Penggandaan </li>
								
								</ol>
								<h3>&nbsp;</h3>
								<p style="text-align:right;">Link : <a href="<%: Url.Content("~/assets/public/file/TUPOKSI1.pdf") %>">Download </a></p>
								-->
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
