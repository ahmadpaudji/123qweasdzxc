<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<% foreach (var item in Model) { %>
	<li><a href="<%: Url.Action("Detail", "Prosedur", new { id = item.content_id },Request.Url.Scheme)%>"><%: item.content_name %></a></li>
<% } %>