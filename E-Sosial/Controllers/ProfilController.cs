using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace E_Sosial.Controllers
{
    public class ProfilController : Controller
    {
        //
        // GET: /Profil/StrukturOrganisasi

		public ActionResult StrukturOrganisasi()
        {
            return View();
        }

		//
		// GET: /Profil/VisiMisi

		public ActionResult VisiMisi()
		{
			return View();
		}

		//
		// GET: /Profil/ProgramKerja

		public ActionResult ProgramKerja()
		{
			return View();
		}

		//
		// GET: /Profil/Kontak

		public ActionResult Kontak()
		{
			return View();
		}

    }
}
