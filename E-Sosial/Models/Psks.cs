using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Sosial.Models
{
	public class Psks : t_kesejahteraan
	{
		db_esosEntities db_esos = new db_esosEntities();
		public string satuan;

		public List<Psks> getList()
		{
			var tListPSKS = db_esos.t_kesejahteraan
								.Where(m => m.ks_type == "psks")
								.OrderBy(m => m.ks_id)
								.ToList();

			var listPSKS = new List<Psks>();
			foreach (var item in tListPSKS)
			{
				listPSKS.Add(new Psks
				{
					ks_id = item.ks_id,
					ks_name = item.ks_name,
					ks_jumlah = item.ks_jumlah,
					ks_type = item.ks_type,
					ks_satuan = item.ks_satuan,
					satuan = db_esos.t_satuan
								.Where(n => n.id_satuan == item.ks_satuan)
								.Select(n => n.satuan)
								.FirstOrDefault(),
					ks_date = item.ks_date,
					ks_year = item.ks_year
				});

			}
			return listPSKS;
		}

		public List<Psks> getList(int start, int count)
		{
			var tListPSKS = db_esos.t_kesejahteraan
								.Where(m => m.ks_type == "psks")
								.OrderBy(m => m.ks_id)
								.Skip(start)
								.Take(count)
								.ToList();

			var listPSKS = new List<Psks>();
			foreach (var item in tListPSKS)
			{
				listPSKS.Add(new Psks
				{
					ks_id = item.ks_id,
					ks_name = item.ks_name,
					ks_jumlah = item.ks_jumlah,
					ks_type = item.ks_type,
					ks_satuan = item.ks_satuan,
					satuan = db_esos.t_satuan
								.Where(n => n.id_satuan == item.ks_satuan)
								.Select(n => n.satuan)
								.FirstOrDefault(),
					ks_date = item.ks_date,
					ks_year = item.ks_year
				});

			}
			return listPSKS;
		}

		public List<Psks> getList(int tahun, int start, int count)
		{
			var tListPSKS = db_esos.t_kesejahteraan
								.Where(m => m.ks_type == "psks" && m.ks_year == tahun)
								.OrderBy(m => m.ks_id)
								.Skip(start)
								.Take(count)
								.ToList();

			var listPSKS = new List<Psks>();
			foreach (var item in tListPSKS)
			{
				listPSKS.Add(new Psks
				{
					ks_id = item.ks_id,
					ks_name = item.ks_name,
					ks_jumlah = item.ks_jumlah,
					ks_type = item.ks_type,
					ks_satuan = item.ks_satuan,
					satuan = db_esos.t_satuan
								.Where(n => n.id_satuan == item.ks_satuan)
								.Select(n => n.satuan)
								.FirstOrDefault(),
					ks_date = item.ks_date,
					ks_year = item.ks_year
				});

			}
			return listPSKS;
		}

		public Nullable<short> getMinTahun()
		{
			return db_esos.t_kesejahteraan
							.Where(m => m.ks_type == "psks")
							.OrderBy(m => m.ks_year)
							.Select(m => m.ks_year)
							.FirstOrDefault();
		}

		public Nullable<short> getMaxTahun()
		{
			return db_esos.t_kesejahteraan
							.Where(m => m.ks_type == "psks")
							.OrderByDescending(m => m.ks_year)
							.Select(m => m.ks_year)
							.FirstOrDefault();
		}
	}
}