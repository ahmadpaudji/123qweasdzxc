using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.viewModels
{
	public class Berita : t_news
	{
		db_esosEntities db_esos = new db_esosEntities();
		//public t_news berita;
		//public user user;
		public string user_nama;
		public string gambar;

		public List<Berita> getList(int start, int count)
		{
			var tListBerita = db_esos.t_news
								.Where(m => m.news_status == "aktif")
								.OrderByDescending(m => m.news_date)
								.Skip(start)
								.Take(count)
								.ToList();
			var listBerita = new List<Berita>();
			foreach (var item in tListBerita)
			{
				listBerita.Add(new Berita
				{
					news_category = item.news_category,
					news_content = item.news_content,
					news_date = item.news_date,
					news_id = item.news_id,
					news_modified = item.news_modified,
					news_parent = item.news_parent,
					news_status = item.news_status,
					news_title = item.news_title,
					news_type = item.news_type,
					news_url = item.news_url,
					user_id = item.user_id,
					//berita = item,
					//user = db_esos.users.Find(item.user_id),
					user_nama = db_esos.users
								.Where(n => n.id_user == item.user_id)
								.Select(n => n.nama)
								.FirstOrDefault(),
					gambar = db_esos.t_file
								.Where(n => n.file_parent == item.news_id && n.file_category == "Berita")
								.Select(n => n.file_url)
								.FirstOrDefault()
					//gambar = (from table in db_esos.t_file where table.file_parent == berita.news_id && table.file_category == "Berita" select table.file_url).FirstOrDefault()
				});

			}
			return listBerita;
		}

		public Berita find(int id=0)
		{
			var dataBerita = new Berita();
			//dataBerita.berita = db_esos.t_news.Find(id);
			var tBerita = db_esos.t_news.Find(id);
			dataBerita.news_category = tBerita.news_category;
			dataBerita.news_content = tBerita.news_content;
			dataBerita.news_date = tBerita.news_date;
			dataBerita.news_id = tBerita.news_id;
			dataBerita.news_modified = tBerita.news_modified;
			dataBerita.news_parent = tBerita.news_parent;
			dataBerita.news_status = tBerita.news_status;
			dataBerita.news_title = tBerita.news_title;
			dataBerita.news_type = tBerita.news_type;
			dataBerita.news_url = tBerita.news_url;
			dataBerita.user_id = tBerita.user_id;
			//dataBerita.user = db_esos.users.Find(dataBerita.berita.user_id);
			dataBerita.user_nama = db_esos.users
						.Where(n => n.id_user == dataBerita.user_id)
						.Select(n => n.nama)
						.FirstOrDefault();
			dataBerita.gambar = db_esos.t_file
								.Where(n => n.file_parent == dataBerita.news_id && n.file_category == "Berita")
								.Select(n => n.file_url)
								.FirstOrDefault();
			//dataBerita.gambar = (from table in db_esos.t_file where table.file_parent == berita.news_id && table.file_category == "Berita" select table.file_url).FirstOrDefault();
			return dataBerita;
		}
	}
}