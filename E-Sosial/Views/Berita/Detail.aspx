<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | Berita - <%= Model.news_title %></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="fb-root"></div>
<script>(function (d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
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
					<h3>Berita</h3><br>
					<div class="box">
						<a href="#"><h4><%= Model.news_title %></h4></a>
						<div class="boxInfo examInfo">
							<ul>
								<li class="proExm"><a href="#"><%: Model.user_nama %></a></a></li>
								<li class="dateExm"><%: Model.news_date %></li>
								<li class="commentExm"><a href="#"><fb:comments-count href=<%: Request.Url.ToString() %>></fb:comments-count> comment</a></li>
								<li style="background-position: -30px -200px;"></li>
							</ul>
							<div>
								<% if (Model.gambar != null) { %>
								<img class="fwidth" src="<%: Url.Content(Model.gambar) %>" alt="">
								<% } %>
								<%: 
									Html.Raw(Model.news_content) 
								%>
								<br />
								<div class="fb-like" data-href="<%: Request.Url.ToString() %>" data-width="300" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
								<a href="https://twitter.com/share" class="twitter-share-button" data-url="<%: Request.Url.ToString() %>" data-text="<%= Model.news_title %>" data-via="E-Sos" data-hashtags="E_Sos\">Tweet</a>
								<script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
							</div>
						</div>
					</div>
					<div class="box">
						<a href="#"><h4>Komentar</h4></a>
						<div class="boxInfo examInfo">
							<div>
								<div class="fb-comments" data-href="<%: Request.Url.ToString() %>" data-width="500" data-numposts="5" data-colorscheme="light"></div>
							</div>
						</div>
					</div>
				</div>
			</div> <!-- End Clear 1 -->
		</div> <!-- End Content .Clearfix -->
	</div> <!-- End ContentBk -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptContent" runat="server">
</asp:Content>
