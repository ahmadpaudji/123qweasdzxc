using E_Sosial.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Sosial.Controllers
{
    public class widgetController : Controller
	{

		// GET: /widget/kategoriBerita

		[ChildActionOnly]
		public ActionResult listAlbum()
		{
			var tAlbum = new Album();
			var listAlbum = tAlbum.getList();
			ViewBag.actionName = System.Web.HttpContext.Current.Request.RequestContext.RouteData.GetRequiredString("action");
			return PartialView(listAlbum);
		}

		// GET: /widget/kepalaDinsos

		[ChildActionOnly]
		public ActionResult kepalaDinsos()
		{
			return PartialView();
		}

		// GET: /widget/programRelawan

		[ChildActionOnly]
		public ActionResult programRelawan()
		{
			return PartialView();
		}

		// GET: /widget/kategoriBerita

		[ChildActionOnly]
		public ActionResult kategoriBerita()
		{
			var tKat = new BeritaKategori();
			var listKat = tKat.getList();
			return PartialView(listKat);
		}

		// GET: /widget/alamat

		[ChildActionOnly]
		public ActionResult alamat()
		{
			return PartialView();
		}

		// GET: /widget/acara

		[ChildActionOnly]
		public ActionResult acara()
		{
			return PartialView();
		}

		// GET: /widget/folowus

		[ChildActionOnly]
		public ActionResult folowus()
		{
			return PartialView();
		}

		// GET: /widget/vProg

		[ChildActionOnly]
		public ActionResult vProg()
		{
			return PartialView();
		}

		// GET: /widget/donasi

		[ChildActionOnly]
		public ActionResult donasi()
		{
			return PartialView();
		}

		// GET: /widget/beritaTerkait

		[ChildActionOnly]
		public ActionResult beritaTerkait()
		{
			return PartialView();
		}

		// GET: /widget/beritaTerkait

		[ChildActionOnly]
		public ActionResult centralLink()
		{
			return PartialView();
		}

    }
}
