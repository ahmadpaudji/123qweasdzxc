using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class userModel : user
	{
		db_esosEntities db_esos = new db_esosEntities();

		public List<user> getList()
		{
			return db_esos.users
								.OrderBy(m => m.id_user)
								.ToList();
		}

		public List<user> getList(int start, int count)
		{
			return db_esos.users
								.OrderBy(m => m.id_user)
								.Skip(start)
								.Take(count)
								.ToList();
		}
	}
}