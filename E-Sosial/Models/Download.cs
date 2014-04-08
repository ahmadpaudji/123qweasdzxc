using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class Download : t_download
	{
		db_esosEntities db_esos = new db_esosEntities();
		public string user_nama;

		public List<Download> getList()
		{
			var tListDownload = db_esos.t_download
								.OrderByDescending(m => m.download_date)
								.ToList();
			var listDownload = new List<Download>();
			foreach (var item in tListDownload)
			{
				listDownload.Add(new Download
				{
					download_date = item.download_date,
					download_desc = item.download_desc,
					download_id = item.download_id,
					download_path = item.download_path,
					download_title = item.download_title,
					user_id = item.user_id,
					user_nama = db_esos.users
								.Where(n => n.id_user == item.user_id)
								.Select(n => n.nama)
								.FirstOrDefault()
				});

			}
			return listDownload;
		}

		public List<Download> getList(int start, int count)
		{
			var tListDownload = db_esos.t_download
								.OrderByDescending(m => m.download_date)
								.Skip(start)
								.Take(count)
								.ToList();
			var listDownload = new List<Download>();
			foreach (var item in tListDownload)
			{
				listDownload.Add(new Download
				{
					download_date = item.download_date,
					download_desc = item.download_desc,
					download_id = item.download_id,
					download_path = item.download_path,
					download_title = item.download_title,
					user_id = item.user_id,
					user_nama = db_esos.users
								.Where(n => n.id_user == item.user_id)
								.Select(n => n.nama)
								.FirstOrDefault()
				});

			}
			return listDownload;
		}
	}
}