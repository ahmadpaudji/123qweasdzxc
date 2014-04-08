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
		public string user_nama;

		public Content getVisiMisi()
		{
			return this.find(21);
		}

		public Content getProgramKerja()
		{
			return this.find(23);
		}

		public Content find(int id = 0)
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
			dataContent.file_url = db_esos.t_file
								.Where(n => n.file_parent == dataContent.content_id && n.file_category == "Profil")
								.Select(n => n.file_url)
								.FirstOrDefault();
			return dataContent;
		}
	}
}