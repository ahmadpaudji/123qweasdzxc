using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class Kecamatan : t_wilayah
	{
		db_esosEntities db_esos = new db_esosEntities();

		public List<t_wilayah> getList()
		{
			return db_esos.t_wilayah
								.Where(m => m.wil_type == "Kecamatan")
								.OrderBy(m => m.wil_name)
								.ToList();
		}

		public List<t_wilayah> getList(int start, int count)
		{
			return db_esos.t_wilayah
								.Where(m => m.wil_type == "Kecamatan")
								.OrderBy(m => m.wil_name)
								.Skip(start)
								.Take(count)
								.ToList();
		}
	}
}