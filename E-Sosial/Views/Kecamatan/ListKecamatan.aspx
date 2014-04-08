<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
                          
<ul>
	<% foreach (var item in Model) 
	{%>
		<li><a href="<%: item.web_url %>">Kec. <%: item.wil_name %></a></li>
	<% } %>
</ul>
