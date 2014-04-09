<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<h3>Kategori Berita</h3>
<div class="cContent" style="padding:0px">
	<ul class="links column clearfix">
		<% foreach (var item in Model) { %>
		<li><a href="<%: Url.Action("Kategori", "Berita", new { id = item.news_category_id },Request.Url.Scheme)%>"><%: item.category_title %></a></li>
		<% } %>
	</ul>
</div>