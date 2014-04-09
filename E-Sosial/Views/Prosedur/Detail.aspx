<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | Prosedur - <%: Model.content_name %></asp:Content>

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
								<% if (Model.gambar != null) { %>
								<img class="fwidth" src="<%: Url.Content(Model.gambar) %>" />
								<% } %>
								<%: Html.Raw(Model.content) %>
								<% if (Model.file_url != null) { %>
								<h3>&nbsp;</h3>
								<p style="text-align:right;">Dokumen : <a href="<%: Url.Content(Model.file_url) %>">Download </a></p>
								<% } %>
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
