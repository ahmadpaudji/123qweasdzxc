using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class Dokumentasi : t_dokumentasi
	{
		db_esosEntities db_esos = new db_esosEntities();
		public string album;

		public List<Dokumentasi> getListFoto()
		{
			var tListDokumentasi = db_esos.t_dokumentasi
								.Where(n => n.dokumentasi_type == "foto")
								.OrderByDescending(m => m.dokumentasi_date)
								.ToList();
			var listDokumentasi = new List<Dokumentasi>();
			foreach (var item in tListDokumentasi)
			{
				listDokumentasi.Add(new Dokumentasi
				{
					album_id = item.album_id,
					dokumentasi_id = item.dokumentasi_id,
					dokumentasi_date = item.dokumentasi_date,
					dokumentasi_path = item.dokumentasi_path,
					dokumentasi_title = item.dokumentasi_title,
					dokumentasi_type = item.dokumentasi_type,
					album = db_esos.t_album
								.Where(n => n.album_id == item.album_id)
								.Select(n => n.album_title)
								.FirstOrDefault()
				});

			}
			return listDokumentasi;
		}

		public List<Dokumentasi> getListFoto(int album_id)
		{
			var tListDokumentasi = db_esos.t_dokumentasi
								.Where(n => n.dokumentasi_type == "foto" && n.album_id == album_id)
								.OrderByDescending(m => m.dokumentasi_date)
								.ToList();
			var listDokumentasi = new List<Dokumentasi>();
			foreach (var item in tListDokumentasi)
			{
				listDokumentasi.Add(new Dokumentasi
				{
					album_id = item.album_id,
					dokumentasi_id = item.dokumentasi_id,
					dokumentasi_date = item.dokumentasi_date,
					dokumentasi_path = item.dokumentasi_path,
					dokumentasi_title = item.dokumentasi_title,
					dokumentasi_type = item.dokumentasi_type,
					album = db_esos.t_album
								.Where(n => n.album_id == item.album_id)
								.Select(n => n.album_title)
								.FirstOrDefault()
				});

			}
			return listDokumentasi;
		}

		public List<Dokumentasi> getListVideo()
		{
			var tListDokumentasi = db_esos.t_dokumentasi
								.Where(n => n.dokumentasi_type == "video")
								.OrderByDescending(m => m.dokumentasi_date)
								.ToList();
			var listDokumentasi = new List<Dokumentasi>();
			foreach (var item in tListDokumentasi)
			{
				listDokumentasi.Add(new Dokumentasi
				{
					album_id = item.album_id,
					dokumentasi_id = item.dokumentasi_id,
					dokumentasi_date = item.dokumentasi_date,
					dokumentasi_path = item.dokumentasi_path,
					dokumentasi_title = item.dokumentasi_title,
					dokumentasi_type = item.dokumentasi_type,
					album = db_esos.t_album
								.Where(n => n.album_id == item.album_id)
								.Select(n => n.album_title)
								.FirstOrDefault()
				});

			}
			return listDokumentasi;
		}

		public List<Dokumentasi> getListVideo(int album_id)
		{
			var tListDokumentasi = db_esos.t_dokumentasi
								.Where(n => n.dokumentasi_type == "video" && n.album_id == album_id)
								.OrderByDescending(m => m.dokumentasi_date)
								.ToList();
			var listDokumentasi = new List<Dokumentasi>();
			foreach (var item in tListDokumentasi)
			{
				listDokumentasi.Add(new Dokumentasi
				{
					album_id = item.album_id,
					dokumentasi_id = item.dokumentasi_id,
					dokumentasi_date = item.dokumentasi_date,
					dokumentasi_path = item.dokumentasi_path,
					dokumentasi_title = item.dokumentasi_title,
					dokumentasi_type = item.dokumentasi_type,
					album = db_esos.t_album
								.Where(n => n.album_id == item.album_id)
								.Select(n => n.album_title)
								.FirstOrDefault()
				});

			}
			return listDokumentasi;
		}
	}
}