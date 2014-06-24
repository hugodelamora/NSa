using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NominasSAT.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ILog logger = LogManager.GetLogger(typeof(HomeController));
            logger.Info("Hello world");
            logger.Debug("Hello world");
            try
            {
                throw new InvalidOperationException();
            }catch(Exception e){
                logger.Error("Error ha sucedido",e);

            }
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}