<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<h3>Album</h3>
<!--<div class="cContent" style="padding:0px">-->
<div class="clearfix">
	<ul class="links column clearfix">
		<% foreach (var item in Model) { %>
		<li><a href="<%: Url.Action(ViewBag.actionName, "Dokumentasi", new { id_album = item.album_id },Request.Url.Scheme)%>"><%: item.album_title %></a></li>
		<% } %>
	</ul>
</div>
<!--</div>-->