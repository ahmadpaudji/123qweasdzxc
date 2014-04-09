<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | Download </asp:Content>

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
                <div class="blog column c-2 clearfix"">
					<!-- NEWS -->
					<h3>Download</h3><br>
					<div class="box">
						<div class="examInfo">
							<div>
								<table>
									<thead>
										<tr>
											<th>No</th>
											<th>Nama</th>
											<th>Keterangan</th>
											<th>Aksi</th>
										</tr>
									</thead>
									<tbody>
										<% 
										int i = 1;
										foreach (var item in Model) 
										{%>
											<tr>
												<td><%: i++ %></td>
												<td><%: item.download_title %></td>
												<td><%: item.download_desc %></td>
												<td><a href="<%: Url.Action("Download", "Data", new { url = item.download_path },Request.Url.Scheme)%>"><button>Download</button></a></td>
											</tr>
										<% } %>
									</tbody>
								</table>
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
