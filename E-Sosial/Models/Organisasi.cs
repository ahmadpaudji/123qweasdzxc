using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class Organisasi : t_organisasi
	{
		db_esosEntities db_esos = new db_esosEntities();

		public List<t_organisasi> getList()
		{
			return db_esos.t_organisasi
								.OrderBy(m => m.t_organisasi1)
								.ToList();
		}
	}
}