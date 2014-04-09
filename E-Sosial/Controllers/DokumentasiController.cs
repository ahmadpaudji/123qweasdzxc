using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using E_Sosial.Models;
using E_Sosial.viewModels;

namespace E_Sosial.Controllers
{
	public class DokumentasiController : Controller
	{

		//
		// GET: /Dokumentasi/Foto

		public ActionResult Foto(int id_album = 0)
		{
			var tAlbum = new Album();
			var tFoto = new Dokumentasi();
			if (id_album == 0)
			{
				var album = tAlbum.getLastAlbum();
				var listFoto = tFoto.getListFoto(album.album_id);
				ViewBag.album = album;
				ViewBag.listFoto = listFoto;
				return View();
			}
			else
			{
				var album = tAlbum.find(id_album);
				var listFoto = tFoto.getListFoto(id_album);
				ViewBag.album = album;
				ViewBag.listFoto = listFoto;
				return View();
			}
		}

		//
		// GET: /Dokumentasi/Video

		public ActionResult Video(int id_album = 0)
		{
			var tAlbum = new Album();
			var tVideo = new Dokumentasi();
			if (id_album == 0)
			{
				var album = tAlbum.getLastAlbum();
				var listVideo = tVideo.getListVideo(album.album_id);
				ViewBag.album = album;
				ViewBag.listVideo = listVideo;
				return View();
			}
			else
			{
				var album = tAlbum.find(id_album);
				var listVideo = tVideo.getListVideo(id_album);
				ViewBag.album = album;
				ViewBag.listVideo = listVideo;
				return View();
			}
		}

		// GET: /Dokumentasi/listAlbum

		[ChildActionOnly]
		public ActionResult listAlbum()
		{
			var tAlbum = new Album();
			var listAlbum = tAlbum.getList();
			return PartialView(listAlbum);
		}
	}
}
