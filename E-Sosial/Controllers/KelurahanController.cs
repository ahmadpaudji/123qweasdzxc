using E_Sosial.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Sosial.Controllers
{
    public class KelurahanController : Controller
    {
        //
        // GET: /Kelurahan/

        public ActionResult Index()
		{
			var tKelurahan = new Kelurahan();
			return PartialView(tKelurahan.getList());
        }

    }
}
