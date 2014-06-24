using NominasSAT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NominasSAT.Controllers
{
    public class ISRController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();
        //
        // GET: /IMSS/
     
        public ActionResult Index()
        {
            string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC.ToString();
            // aqui asignamos los valores al ViewBag
            ViewBag.TablaISR1 = db.TablaISR1.ToList();
            ViewBag.TablaISR2 = db.TablaISR2.ToList();
            ViewBag.TablaISRSinEstimuloFiscals = db.TablaISRSinEstimuloFiscals.ToList();
            ViewBag.Limites = getLimites(db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC.ToString());
            ViewBag.tablaCalculadaISR1 = getTARM(RFCPatron);
            ViewBag.tablaCalculadaISR2 = getTARMP(RFCPatron);
            ViewBag.tablaCalculadaEstimuloISR1 = getTARMC(RFCPatron);
            ViewBag.tablaCalculadaEstimuloISR2 = getTARSP(RFCPatron);
            ViewBag.DiasTabla = getLimites(db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC.ToString()).DiasTarifa;
            ViewBag.TARM = getTARMValue(RFCPatron);
            ViewBag.TARMP = getTARMPValue(RFCPatron);
            ViewBag.TARMC = getTARMCValue(RFCPatron);
            ViewBag.TARSP = getTARSPValue(RFCPatron);


            return View();
        }

        public ISRLimitesConfiguracion getLimites(string RFCPatron)
        {
            //string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC.ToString();
             ISRLimitesConfiguracion Limites = new ISRLimitesConfiguracion();
            // aqui checamos si hay limites definidos por parte del usuario
             if (db.ISRLimitesConfiguracions.Where(x => x.RFC == RFCPatron).Count() > 0)
            {
                Limites = db.ISRLimitesConfiguracions.FirstOrDefault(x => x.RFC == RFCPatron);
            }
            else
            {
               
               ISRLimites ISRLimites = db.ISRLimites.FirstOrDefault();

                 Limites.RFC = RFCPatron;
                 Limites.CantidadQuintoNivel = ISRLimites.CantidadQuintoNivel;
                 Limites.QuintoLimiteInferior = ISRLimites.QuintoLimiteInferior;
                 Limites.DiasTarifa = ISRLimites.DiasTarifa;


              
            }

             return Limites;

        }

        public List<TablaISR1> getTARM(string RFCPatron)
        {
           // string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC.ToString();
         List<TablaISR1> tablaCalculadaISR1 = new List<TablaISR1>();
             foreach (TablaISR1 TablaISR1Item in db.TablaISR1.ToList()) // Loop through List with foreach
             {
                 tablaCalculadaISR1.Add(new TablaISR1 { Id = TablaISR1Item.Id, LimiteInferior = TablaISR1Item.LimiteInferior * getTARMValue(RFCPatron), CuotaFija = TablaISR1Item.CuotaFija * getTARMValue(RFCPatron), Porcentajetarifa = TablaISR1Item.Porcentajetarifa });
             }
             return tablaCalculadaISR1;
    }
        public List<TablaISR1> getTARMP(string RFCPatron)
        {
            
            List<TablaISR1> tablaCalculadaISR2 = new List<TablaISR1>();
            foreach (TablaISR1 TablaISR1ItemTabla2 in getTARM(RFCPatron)) // Loop through List with foreach
             {
                 tablaCalculadaISR2.Add(new TablaISR1 { Id = TablaISR1ItemTabla2.Id, LimiteInferior = TablaISR1ItemTabla2.LimiteInferior * getTARMPValue(RFCPatron), CuotaFija = TablaISR1ItemTabla2.CuotaFija * getTARMPValue(RFCPatron), Porcentajetarifa = TablaISR1ItemTabla2.Porcentajetarifa });
             }
            return tablaCalculadaISR2;
        }
        public List<TablaISR2> getTARMC(string RFCPatron)
    {

        List<TablaISR2> tablaCalculadaEstimuloISR1 = new List<TablaISR2>();
        foreach (TablaISR2 TablaEstimuloISR2Item in db.TablaISR2.ToList()) // Loop through List with foreach
        {
            tablaCalculadaEstimuloISR1.Add(new TablaISR2 { Id = TablaEstimuloISR2Item.Id, LimiteInferior = TablaEstimuloISR2Item.LimiteInferior * getTARMCValue(RFCPatron), Subsidio = TablaEstimuloISR2Item.Subsidio * getTARMCValue(RFCPatron) });
        }

        return tablaCalculadaEstimuloISR1;

    }
        public List<TablaISR2> getTARSP(string RFCPatron)
        {

            List<TablaISR2> tablaCalculadaEstimuloISR2 = new List<TablaISR2>();
            foreach (TablaISR2 TablaEstimuloISR1Item in getTARMC(RFCPatron)) // Loop through List with foreach
            {
                tablaCalculadaEstimuloISR2.Add(new TablaISR2 { Id = TablaEstimuloISR1Item.Id, LimiteInferior = TablaEstimuloISR1Item.LimiteInferior / getValorDesconocido() * getDiasTabla(RFCPatron), Subsidio = TablaEstimuloISR1Item.Subsidio / getValorDesconocido() * getDiasTabla(RFCPatron) });
            }
            return tablaCalculadaEstimuloISR2;

        }

        public double getTARMValue(string RFCPatron)
        {
            //string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC.ToString();
            ISRLimitesConfiguracion Limites = getLimites(RFCPatron);
            int quintoLimite = getQuintoLimite();
            return db.TablaISR1.FirstOrDefault(x => x.Id == quintoLimite).LimiteInferior / Limites.QuintoLimiteInferior;
        }
        public double getTARMPValue(string RFCPatron)
        {
            ISRLimitesConfiguracion Limites = getLimites(RFCPatron);
            return Limites.DiasTarifa / getValorDesconocido();
        }
        public double getTARMCValue(string RFCPatron)
        {
            ISRLimitesConfiguracion Limites = getLimites(RFCPatron);
            int quintoLimite = getQuintoLimite();
            return db.TablaISR2.FirstOrDefault(x => x.Id == quintoLimite).LimiteInferior / Limites.CantidadQuintoNivel;
        }
        public double getTARSPValue(string RFCPatron)
        {
            return getDiasTabla(RFCPatron) / getValorDesconocido();
        }
        public int getQuintoLimite()
        {
            return 5;
        }
        public double getValorDesconocido()
        {
            return 30.4;
        }
        public double getDiasTabla(string RFCPatron)
        {

            return getLimites(RFCPatron).DiasTarifa;
        }

	}
}