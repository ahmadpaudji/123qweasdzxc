using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class Content : t_content
	{
		db_esosEntities db_esos = new db_esosEntities();
		public string file_url;
		public string gambar;
		public string user_nama;

		public List<Content> getList(string type = "")
		{
			var tListContent = db_esos.t_content
								.Where(m => m.content_type == type)
								.OrderBy(m => m.content_id)
								.ToList();
			var listContent = new List<Content>();
			foreach (var item in tListContent)
			{
				listContent.Add(new Content
				{
					content_id = item.content_id,
					content_name = item.content_name,
					content_time = item.content_time,
					content_type = item.content_type,
					content = item.content,
					url = item.url,
					user_id = item.user_id,
					user_nama = db_esos.users
								.Where(n => n.id_user == item.user_id)
								.Select(n => n.nama)
								.FirstOrDefault(),
					file_url = db_esos.t_file
									.Where(n => n.file_parent == item.content_id)
									.Select(n => n.file_url)
									.FirstOrDefault()
				});

			}
			return listContent;
		}

		public Content getVisiMisi()
		{
			return this.find(21, "Profil");
		}

		public Content getProgramKerja()
		{
			return this.find(23, "Profil");
		}

		public Content find(int id = 0,string file_cat = "")
		{
			var dataContent = new Content();
			var tContent = db_esos.t_content.Find(id);
			dataContent.content_id = tContent.content_id;
			dataContent.content_name = tContent.content_name;
			dataContent.content_time = tContent.content_time;
			dataContent.content_type = tContent.content_type;
			dataContent.content = tContent.content;
			dataContent.url = tContent.url;
			dataContent.user_id = tContent.user_id;
			dataContent.user_nama = db_esos.users
						.Where(n => n.id_user == dataContent.user_id)
						.Select(n => n.nama)
						.FirstOrDefault();
			if (file_cat == "")
			{
				dataContent.file_url = db_esos.t_file
									.Where(n => n.file_parent == dataContent.content_id)
									.Select(n => n.file_url)
									.FirstOrDefault();
			}
			else
			{
				if (file_cat == "Prosedur")
				{
					dataContent.file_url = db_esos.t_file
										.Where(n => n.file_parent == dataContent.content_id && n.file_category == "ProsedurFile")
										.Select(n => n.file_url)
										.FirstOrDefault();
					dataContent.gambar = db_esos.t_file
										.Where(n => n.file_parent == dataContent.content_id && n.file_category == "ProsedurGambar")
										.Select(n => n.file_url)
										.FirstOrDefault();
				}
				else
				{
				}
			}
			return dataContent;
		}
	}
}