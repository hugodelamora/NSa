using System.Web.Mvc;
using NominasSAT.Mailers;

namespace NominasSAT.Controllers
{
    public class MailController : Controller
    {
        private IUserMailer _mailer = new UserMailer();

        public ActionResult Index()
        {
//            Mailer.Welcome("hugo.delamora@contpaqi.com", "Bienvenido CFDI Nominas RIF", "Hugo De La Mora", "AAA001122AAA", "myPassword").Send();
            return View();
        }
        public ActionResult Welcome()
        {
            Mailer.Welcome("hugo.delamora@contpaqi.com", "Bienvenido CFDI Nominas RIF", "Hugo De La Mora", "AAA001122AAA", "myPassword").SendAsync();            
            //return View();
            return RedirectToAction("Index");
        }
        public ActionResult RecoveryPassword()
        {
            Mailer.RecoveryPassword("hugo.delamora@contpaqi.com", "Recuperación de contraseña", "https://www.contpaqi.com/recovery-password.html", "AAA001122AAA").Send();
            //return View();
            return RedirectToAction("Index");
        }
        public ActionResult SendPayroll()
        {
            Mailer.SendPayroll("hugo.delamora@contpaqi.com", "Nómina", "Hugo De La Mora", "10/ene/2014 a 17/ene/2014", "aaaa-a2222-aasdf-asdfadsf-aaa", "c:\\agua.pdf", "c:\\agua.xml", null).Send();
            //return View();
            return RedirectToAction("Index");
        }
        
        public IUserMailer Mailer
        {
            get { return _mailer; }
            set { _mailer = value; }
        }

	}
}
