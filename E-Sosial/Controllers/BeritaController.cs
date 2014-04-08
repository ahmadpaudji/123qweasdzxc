using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using E_Sosial.Models;
using E_Sosial.viewModels;

namespace E_Sosial.Controllers
{
    public class BeritaController : Controller
    {
        //
        // GET: /Berita/

        public ActionResult Index()
        {
            return View();
        }

		//
		// GET: /Berita/detail/id

		public ActionResult Detail(int id = 0)
		{
			var tBerita = new Berita();
			var dataBerita = tBerita.find(id);
			if (dataBerita == null)
			{
				return HttpNotFound();
			}
			return View(dataBerita);
		}

		//
		// GET: /Berita/listBerita

		[ChildActionOnly]
		public ActionResult listBerita(int s, int c)
		{
			var tBerita = new Berita();
			var listBerita = tBerita.getList(s,c);
			return PartialView(listBerita);
		}

    }
}
