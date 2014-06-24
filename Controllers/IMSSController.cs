using NominasSAT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NominasSAT.Controllers
{
    public class IMSSController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();
        //
        // GET: /IMSS/
        public ActionResult Index()
        {
            var RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // referenncia del RFC del usuario logueado
            // aqui asignamos los valores al ViewBag
            ViewBag.TablaP = db.TablaPs.ToList();
            ViewBag.TablaT = db.TablaTs.ToList();
            ViewBag.TablaTT = db.TablaTTs.ToList();
            ViewBag.SalarioMinimo = getSalarioMinimoConfiguraciones();
            ViewBag.TopesdeVecesdeSalarioXRamoes = getTopesdeVecesdeSalarioXRamo(RFCPatron);
            ViewBag.TopesdeVecesdeSalarioXSalarioMinimo = getTopesdeVecesdeSalarioXSalarioMinimo(RFCPatron);
            ViewBag.Zona = getZona(RFCPatron);
            return View();
        }

        public int getPeriodo(string RFCPatron) {
            int Periodo = 0; // p
            //string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // referenncia del RFC del usuario logueado
            if (db.PeriodoConfiguracions.Where(x => x.RFC == RFCPatron).Count() > 0)
            {
                Periodo = db.PeriodoConfiguracions.FirstOrDefault(x => x.RFC == RFCPatron).Periodo;
            }
            else
            {
                // aqui traemos el periodo predeterminado del sistema ya que no tenemos uno asignado para el usuario
                Periodo = db.Periodoes.Where(x => x.Predeterminado == true).FirstOrDefault().PeriodoP;

            }

            return Periodo;
        }

        public SalarioMinimo getZona(string RFCPatron)
        {

            SalarioMinimo Zona = null;
            //string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC.ToString();
            if (db.ZonaDefaults.Where(x => x.RFC == RFCPatron).Count() > 0)
            {
                Zona = db.SalarioMinimoes.FirstOrDefault(x => x.Zona == db.ZonaDefaults.FirstOrDefault(z => z.RFC == RFCPatron).Zona);

            }
            else
            {
                Zona = db.SalarioMinimoes.OrderByDescending(x => x.Zona).FirstOrDefault();
            }
            return Zona;
        }

        public List<SalarioMinimoConfiguracion> getSalarioMinimoConfiguraciones()
        {
            List<SalarioMinimoConfiguracion> SalarioMinimoConfiguracions = null;

            // validamos si el usuario ya determino los salarios minimos o debemos de tomar los predeterminados
            string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // referenncia del RFC del usuario logueado
            if (db.SalarioMinimoConfiguracions.Where(x => x.RFC == RFCPatron).Count() > 0)
            {
                SalarioMinimoConfiguracions = db.SalarioMinimoConfiguracions.Where(x => x.RFC == RFCPatron).ToList();
            }
            else
            {
                List<SalarioMinimo> SalarioMinimos = db.SalarioMinimoes.ToList();
                SalarioMinimoConfiguracions = new List<SalarioMinimoConfiguracion>();
                foreach (SalarioMinimo salario in SalarioMinimos) // Loop through List with foreach
                {
                    SalarioMinimoConfiguracions.Add(new SalarioMinimoConfiguracion { RFC = RFCPatron, Monto = salario.Monto, Zona = salario.Zona });
                }
            }
            return SalarioMinimoConfiguracions;
        }

        public TopesdeVecesdeSalarioXRamo getTopesdeVecesdeSalarioXRamo(string RFCPatron)
        {
            int periodo = getPeriodo(RFCPatron);
            return db.TopesdeVecesdeSalarioXRamoes.FirstOrDefault(x => x.Periodo == periodo);
        }


        public TopesdeVecesdeSalarioXRamo getTopesdeVecesdeSalarioXSalarioMinimo(string RFCPatron){

            TopesdeVecesdeSalarioXRamo TopesdeVecesdeSalarioXSalarioMinimo = new TopesdeVecesdeSalarioXRamo(); // creamos el objeto

            TopesdeVecesdeSalarioXRamo topesdeVecesdeSalarioXRamo = getTopesdeVecesdeSalarioXRamo(RFCPatron);
            SalarioMinimo Zona = getZona(RFCPatron);
            TopesdeVecesdeSalarioXSalarioMinimo.Periodo = getPeriodo(RFCPatron);
            TopesdeVecesdeSalarioXSalarioMinimo.Tope1 = topesdeVecesdeSalarioXRamo.Tope1 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope2 = topesdeVecesdeSalarioXRamo.Tope2 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope3 = topesdeVecesdeSalarioXRamo.Tope3 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope4 = topesdeVecesdeSalarioXRamo.Tope4 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope5 = topesdeVecesdeSalarioXRamo.Tope5 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope6 = topesdeVecesdeSalarioXRamo.Tope6 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope7 = topesdeVecesdeSalarioXRamo.Tope7 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope8 = topesdeVecesdeSalarioXRamo.Tope8 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope9 = topesdeVecesdeSalarioXRamo.Tope9 * Zona.Monto;
            TopesdeVecesdeSalarioXSalarioMinimo.Tope10 = topesdeVecesdeSalarioXRamo.Tope10 * Zona.Monto;

            return TopesdeVecesdeSalarioXSalarioMinimo;
    }

	}
}