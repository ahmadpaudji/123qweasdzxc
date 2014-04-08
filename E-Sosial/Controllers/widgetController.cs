using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Sosial.Controllers
{
    public class widgetController : Controller
	{

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
			return PartialView();
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
