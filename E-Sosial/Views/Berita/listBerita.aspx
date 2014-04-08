<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<div id="fb-root"></div>
<script>(function (d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<% 
	
	foreach (var item in Model)
	{
		%>
		<div class="box">
			<a href="<%: Url.Action("Berita", "Detail", new { id = item.news_id },Request.Url.Scheme)%>"><h4><%: item.news_title %></h4></a>
			<div class="boxInfo examInfo">
				<ul>
					<li class="proExm"><a href="#"><%: item.user_nama %></a></li>
					<li class="dateExm"><%: item.news_date %></li>
					<li class="commentExm"><a href="#"><fb:comments-count href="<%: Url.Action("Berita", "Detail", new { id = item.news_id },Request.Url.Scheme)%>"></fb:comments-count> comment</a></li>
					<li style="background-position: -30px -200px;"></li>
				</ul>
				<div>
					<% if (item.gambar != null){ %>
					<img class="fwidth" src="<%: Url.Content(item.gambar) %>" alt="">
					<% } %>
					<%: 
						Html.Raw(item.news_content) 
					%>
					<div class="clearfix">&nbsp;</div>
					<br /><br />
					<div class="fb-like" data-href="<%: Url.Action("Berita", "Detail", new { id = item.news_id },Request.Url.Scheme)%>" data-width="300" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
					<a href="https://twitter.com/share" class="twitter-share-button" data-url="<%: Url.Action("Berita", "Detail", new { id = item.news_id },Request.Url.Scheme)%>" data-text="<%= item.news_title %>" data-via="E-Sos" data-hashtags="E_Sos\">Tweet</a>
					<script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script><br>
					<p style="text-align:right;"><%=Html.ActionLink("Selengkapnya...", "Detail", "Berita",new { id = item.news_id },null)%></p>
				</div>
			</div>
		</div>
		<%
	}
%>