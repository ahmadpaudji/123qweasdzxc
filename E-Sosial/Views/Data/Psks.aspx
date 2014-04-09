<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | PSKS</asp:Content>

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
                <div class="column c-d1 clearfix">
					<!-- NEWS -->
					<h3>Potensi Sumber Kesejahteraan Sosial Pemkot Bandung (PSKS)</h3><br>
					<% using (Html.BeginForm("Psks", "Data", FormMethod.Post, null)) { %>
					<div style="float:right">
					Pilih Tahun : 
						<select name="tahun">
							<% for (int j = ViewBag.minTahun; j <= ViewBag.maxTahun; j++) { %>
							<% if (j == ViewBag.selectedTahun) { %>
							<option value="<%: j %>" selected><%: j %></option>
							<% } else { %>
							<option value="<%: j %>"><%: j %></option>
							<% } %>
							<% } %>
						</select>
						<input type="submit" id="submit" value="Lihat" />
					</div>
					<% } %>
								<table>
									<thead>
										<tr>
											<th>No</th>
											<th>Nama</th>
											<th>Jumlah</th>
										</tr>
									</thead>
									<tbody>
										<% 
										int i = 1;
										foreach (var item in Model) 
										{%>
											<tr>
												<td><%: i++ %></td>
												<td><%: item.ks_name %></td>
												<td><%: item.ks_jumlah %> <%: item.satuan %></td>
											</tr>
										<% } %>
									</tbody>
								</table>
				</div>
			</div> <!-- End Clear 1 -->
		</div> <!-- End Content .Clearfix -->
	</div> <!-- End ContentBk -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptContent" runat="server">
</asp:Content>
