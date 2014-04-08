using E_Sosial.Models;
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
			var tProfil = new Content();
			var dataProfil = tProfil.getVisiMisi();
			if (dataProfil == null)
			{
				return HttpNotFound();
			}
			return View(dataProfil);
		}

		//
		// GET: /Profil/ProgramKerja

		public ActionResult ProgramKerja()
		{
			var tProfil = new Content();
			var dataProfil = tProfil.getProgramKerja();
			if (dataProfil == null)
			{
				return HttpNotFound();
			}
			return View(dataProfil);
		}

		//
		// GET: /Profil/Kontak

		public ActionResult Kontak()
		{
			return View();
		}

    }
}
