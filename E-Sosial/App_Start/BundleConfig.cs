using System.Web;
using System.Web.Optimization;

namespace E_Sosial
{
	public class BundleConfig
	{
		public static void RegisterBundles(BundleCollection bundles)
		{
			// Jquery CDN //
			bundles.UseCdn = false; 
			var jqueryCdnPath = "http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js";
			bundles.Add(new ScriptBundle("~/assets/jquery/js",jqueryCdnPath).Include(
						"~/assets/jquery/jquery-1.8.0.js"));

			// public Assets //
			bundles.Add(new ScriptBundle("~/assets/public/js/bundle").Include(
						"~/assets/public/js/jquery.flexslider.js",
						"~/assets/public/js/lightbox.js",
						"~/assets/public/js/scripts.js"
						));
			bundles.Add(new ScriptBundle("~/assets/public/js/ie9").Include(
						"~/assets/public/js/html5shiv.js"
						));
			bundles.Add(new StyleBundle("~/assets/public/css/bundle").Include(
						"~/assets/public/css/reset.css",
						"~/assets/public/css/style.css"
						));
			bundles.Add(new StyleBundle("~/assets/public/css/main").Include(
						"~/assets/public/css/main.css"
						));
			BundleTable.EnableOptimizations = true;
		}
	}
}