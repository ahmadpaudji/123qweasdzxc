<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | Berita</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div id="contentBk">
		<div id="content" class="clearfix">
			<!--<div class="wrapper" style="margin-left:0px;">-->
			<div>
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
				</div> <!-- END  --> 
			</div> <!-- End Clear 1 -->
		</div> <!-- End Content .Clearfix -->
	</div> <!-- End ContentBk -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptContent" runat="server">
</asp:Content>
