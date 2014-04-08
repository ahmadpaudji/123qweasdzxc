<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Public.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">E-SOS | Profil - Struktur Organisasi</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
					<h3>Profil</h3><br>
					<div class="box">
						<a href="#"><h4>Struktur Organisasi</h4></a>
						<div class="boxInfo examInfo">
							<ul>
								<li style="background-position: -30px -200px;"></li>
								<li style="background-position: -30px -200px;"></li>
								<li style="background-position: -30px -200px;"></li>
								<li style="background-position: -30px -200px;"></li>
							</ul>
							<div>
								<a title="Struktur Organisasi" class="gHover" href="<%: Url.Content("~/assets/public/img/struktur_organisasi.png") %>" rel="lightbox">
									<img class="fwidth" src="<%: Url.Content("~/assets/public/img/struktur_organisasi.png") %>" alt="">
								</a>
							</div>
							<table>
								<thead>
									<tr>
										<th>No</th>
										<th>Nama</th>
										<th></th>
										<th>Jabatan</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Drs. Kelly Solihin, M.Si</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_kelly.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Kepala Dinas</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Medi Mahendra, Ap., S.Sos., M.Si</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_medi.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Sekertariat</td>
									</tr>
									<tr>
										<td>3</td>
										<td>Hj. Euis Jubaedah, B.A</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_euis.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Subbag. Umum dan Kepegawaian</td>
									</tr>
									<tr>
										<td>4</td>
										<td>Hj. Idah Rafni, S.H., M.Kn</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_no_image.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Subbag. keuangan dan Program</td>
									</tr>
									<tr>
										<td>5</td>
										<td>Dra. Yanti Erlinawati, M.Si</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_yanti.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Bid. Parsos dan Masyarakat</td>
									</tr>
									<tr>
										<td>6</td>
										<td>Yayah, S.H</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_no_image.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Seksi Bidang</td>
									</tr>
									<tr>
										<td>7</td>
										<td>Iis Kurnaesah, S.H., M.H</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_iis.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Seksi Bidang</td>
									</tr>
									<tr>
										<td>8</td>
										<td>Muh Nurahman, S.H</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_no_image.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Bid. Rehabilitasi Sosial</td>
									</tr>
									<tr>
										<td>9</td>
										<td>Drs. H. Yogaswara H</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_yoga.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Seksi Bidang</td>
									</tr>
									<tr>
										<td>10</td>
										<td>Dewi indra A., S.H</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_dewi.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Seksi Bidang</td>
									</tr>
									<tr>
										<td>11</td>
										<td>Hj. Yeti Rohayati</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_no_image.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Bid. Pelayanan Sosial</td>
									</tr>
									<tr>
										<td>12</td>
										<td>Rd. Baran Subagia., S.Sos</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_no_image.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Seksi Bidang</td>
									</tr>
									<tr>
										<td>13</td>
										<td>Dra. Pipin Latifah</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_pipin.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Seksi Bidang</td>
									</tr>
									<tr>
										<td>14</td>
										<td>Ecih Sukaesih, S.H</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_ecih.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Bid. Pembinaan Rawan Sosial</td>
									</tr>
									<tr>
										<td>15</td>
										<td>Drs. Asep Sugandi</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_asep.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Seksi Bidang</td>
									</tr>
									<tr>
										<td>16</td>
										<td>Sarifah, S.H</td>
										<td><img src="<%: Url.Content("~/assets/public/img/professors/p_ipah.jpg") %>" class="imgBorder" style="margin:5px;"></td>
										<td>Seksi Bidang</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div> <!-- END  -->
			</div> <!-- End Clear 1 -->
		</div> <!-- End Content .Clearfix -->
	</div> <!-- End ContentBk -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scriptContent" runat="server">
</asp:Content>
