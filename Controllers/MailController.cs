using NominasSAT.Mailers;
//using System.Data;
using NominasSAT.Models;
//using System.Data;
using System.Linq;
using System.Web.Mvc;

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
        public ActionResult RecoveryPassword(string rfc)
        {            
            string email="";
            using(ApplicationDbContext db = new ApplicationDbContext()){
                email = db.Users.FirstOrDefault(y => y.RFC == rfc).Email;
            }
                        
            Mailer.RecoveryPassword(email, "Recuperación de contraseña", "https://www.contpaqi.com/recovery-password.html", rfc).Send();
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
