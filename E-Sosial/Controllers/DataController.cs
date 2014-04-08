using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Sosial.Controllers
{
    public class DataController : Controller
	{
		db_esosEntities db_esos = new db_esosEntities();

        //
        // GET: /Data/pmks
        public ActionResult Pmks()
		{
			var tPmks = new E_Sosial.Models.Pmks();
			var listPmks = tPmks.getList(System.DateTime.Now.Year, 0, 10);
			ViewBag.minTahun = tPmks.getMinTahun();
			ViewBag.maxTahun = tPmks.getMaxTahun();
			ViewBag.selectedTahun = System.DateTime.Now.Year;
			return View(listPmks);
        }

		//
		// POST: /Data/pmks
		[HttpPost]
		public ActionResult Pmks(int tahun)
		{
			var tPmks = new E_Sosial.Models.Pmks();
			var listPmks = tPmks.getList(tahun, 0, 10);
			ViewBag.minTahun = tPmks.getMinTahun();
			ViewBag.maxTahun = tPmks.getMaxTahun();
			ViewBag.selectedTahun = tahun;
			return View(listPmks);
		}

		//
		// GET: /Data/psks
		public ActionResult Psks()
		{
			var tPsks = new E_Sosial.Models.Psks();
			var listPsks = tPsks.getList(System.DateTime.Now.Year, 0, 10);
			ViewBag.minTahun = tPsks.getMinTahun();
			ViewBag.maxTahun = tPsks.getMaxTahun();
			ViewBag.selectedTahun = System.DateTime.Now.Year;
			return View(listPsks);
		}

		//
		// POST: /Data/psks
		[HttpPost]
		public ActionResult Psks(int tahun)
		{
			var tPsks = new E_Sosial.Models.Psks();
			var listPsks = tPsks.getList(tahun, 0, 10);
			ViewBag.minTahun = tPsks.getMinTahun();
			ViewBag.maxTahun = tPsks.getMaxTahun();
			ViewBag.selectedTahun = tahun;
			return View(listPsks);
		}

    }
}
