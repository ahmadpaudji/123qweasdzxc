using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class Album : t_album
	{
		db_esosEntities db_esos = new db_esosEntities();
		public string user_nama;

		public List<Album> getList()
		{
			var tListAlbum = db_esos.t_album
								.OrderByDescending(m => m.album_date)
								.ToList();
			var listAlbum = new List<Album>();
			foreach (var item in tListAlbum)
			{
				listAlbum.Add(new Album
				{
					album_id = item.album_id,
					album_date = item.album_date,
					album_desc = item.album_desc,
					album_title = item.album_title,
					user_id = item.user_id,
					user_nama = db_esos.users
								.Where(n => n.id_user == item.user_id)
								.Select(n => n.nama)
								.FirstOrDefault()
				});

			}
			return listAlbum;
		}

		public List<Album> getList(int start, int count)
		{
			var tListAlbum = db_esos.t_album
								.OrderByDescending(m => m.album_date)
								.Skip(start)
								.Take(count)
								.ToList();
			var listAlbum = new List<Album>();
			foreach (var item in tListAlbum)
			{
				listAlbum.Add(new Album
				{
					album_id = item.album_id,
					album_date = item.album_date,
					album_desc = item.album_desc,
					album_title = item.album_title,
					user_id = item.user_id,
					user_nama = db_esos.users
								.Where(n => n.id_user == item.user_id)
								.Select(n => n.nama)
								.FirstOrDefault()
				});

			}
			return listAlbum;
		}

		public Album getLastAlbum()
		{
			var dataAlbum = new Album();
			var tAlbum = db_esos.t_album
								.OrderByDescending(m => m.album_date)
								.FirstOrDefault();
			dataAlbum.album_id = tAlbum.album_id;
			dataAlbum.album_date = tAlbum.album_date;
			dataAlbum.album_desc = tAlbum.album_desc;
			dataAlbum.album_title = tAlbum.album_title;
			dataAlbum.user_id = tAlbum.user_id;
			dataAlbum.user_nama = db_esos.users
								.Where(n => n.id_user == tAlbum.user_id)
								.Select(n => n.nama)
								.FirstOrDefault();
			return dataAlbum;
		}

		public Album find(int id = 0)
		{
			var dataAlbum = new Album();
			var tAlbum = db_esos.t_album.Find(id);
			dataAlbum.album_id = tAlbum.album_id;
			dataAlbum.album_date = tAlbum.album_date;
			dataAlbum.album_desc = tAlbum.album_desc;
			dataAlbum.album_title = tAlbum.album_title;
			dataAlbum.user_id = tAlbum.user_id;
			dataAlbum.user_nama = db_esos.users
								.Where(n => n.id_user == tAlbum.user_id)
								.Select(n => n.nama)
								.FirstOrDefault();
			return dataAlbum;
		}
	}
}