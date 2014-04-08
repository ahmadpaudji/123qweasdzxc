using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using E_Sosial.Models;

namespace E_Sosial.Controllers
{
    public class KecamatanController : Controller
    {
        //
        // GET: /Kecamatan/

        public ActionResult Index()
		{
			var tKecamatan = new Kecamatan();
			return PartialView(tKecamatan.getList());
        }

		//
		// GET: /Kecamatan/listKecamatan

		[ChildActionOnly]
		public ActionResult listKecamatan(int s, int c)
		{
			var tKecamatan = new Kecamatan();
			return PartialView(tKecamatan.getList(s, c));
		}

    }
}
