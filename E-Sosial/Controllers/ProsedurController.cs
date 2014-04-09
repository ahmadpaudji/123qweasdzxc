using E_Sosial.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Sosial.Controllers
{
    public class ProsedurController : Controller
    {
        //
        // GET: /Prosedur/Detail/id

		public ActionResult Detail(int id=0)
		{
			var tProsedur = new Content();
			var dataProsedur = tProsedur.find(id,"Prosedur");
			if (dataProsedur == null)
			{
				return HttpNotFound();
			}
			return View(dataProsedur);
        }

		//
		// GET: /Prosedur/listProsedur

		[ChildActionOnly]
		public ActionResult listProsedur()
		{
			var tProsedur = new Content();
			var listProsedur = tProsedur.getList("Prosedur");
			return PartialView(listProsedur);
		}

    }
}
