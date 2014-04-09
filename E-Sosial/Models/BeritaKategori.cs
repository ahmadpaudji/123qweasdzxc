using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class BeritaKategori : t_news_category
	{
		db_esosEntities db_esos = new db_esosEntities();
		public string user_nama;

		public List<BeritaKategori> getList()
		{
			var tListKat = db_esos.t_news_category
								.OrderByDescending(m => m.category_date)
								.ToList();
			var listKat = new List<BeritaKategori>();
			foreach (var item in tListKat)
			{
				listKat.Add(new BeritaKategori
				{
					news_category_id = item.news_category_id,
					category_date = item.category_date,
					category_title = item.category_title,
					user_id = item.user_id,
					user_nama = db_esos.users
								.Where(n => n.id_user == item.user_id)
								.Select(n => n.nama)
								.FirstOrDefault()
				});

			}
			return listKat;
		}
	}
}