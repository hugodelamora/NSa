using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mvc.Mailer;
using NominasSAT.Mailers;

namespace NominasSAT.Controllers
{
    public class MailController : Controller
    {
        private IUserMailer _mailer = new UserMailer();
        
        public ActionResult Index()
        {
            Mailer.Welcome().Send();
            return View();
        }
        
        public IUserMailer Mailer
        {
            get { return _mailer; }
            set { _mailer = value; }
        }

	}
}
