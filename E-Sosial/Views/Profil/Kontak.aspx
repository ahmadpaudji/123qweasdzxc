<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">Kontak Kami</asp:Content>

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
				<div class="column c-2 clearfix">
					<!-- NEWS -->
					<h3>Kontak Kami</h3><br>
					<div class="box ">
						<h4><span>Peta Lokasi</span></h4>
						<div class="boxInfo ">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.108645603859!2d107.59542290000002!3d-6.877585099999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e68d7afb084b%3A0xb1e0f730bcff0d5d!2sJalan+Sindang+Sirna!5e0!3m2!1sen!2sus!4v1396451924784" width="600" height="450" frameborder="0" style="border:0"></iframe>
							<br>
							<h4><span>Alamat</span></h4><br>
							<p> Jalan Sindang Sirna No.40, Bandung <br>
								Telp. 022 - 2013139 <br>
								Fax. 022 - 2013139 <br>
								E-mail. sosial@bandung.go.id
							</p><br>
						</div>
					</div>
				</div> <!-- END  -->
			</div> <!-- End Clear 1 -->
		</div> <!-- End Content .Clearfix -->
	</div> <!-- End ContentBk -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptContent" runat="server">
</asp:Content>
