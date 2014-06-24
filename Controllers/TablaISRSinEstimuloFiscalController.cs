using System;
using System.Collections.Generic;
//using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using NominasSAT.Models;

namespace NominasSAT.Controllers
{
    public class TablaISRSinEstimuloFiscalController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TablaISRSinEstimuloFiscal/
        public ActionResult Index()
        {
            return View(db.TablaISRSinEstimuloFiscals.ToList());
        }

        // GET: /TablaISRSinEstimuloFiscal/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISRSinEstimuloFiscal tablaisrsinestimulofiscal = db.TablaISRSinEstimuloFiscals.Find(id);
            if (tablaisrsinestimulofiscal == null)
            {
                return HttpNotFound();
            }
            return View(tablaisrsinestimulofiscal);
        }

        // GET: /TablaISRSinEstimuloFiscal/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TablaISRSinEstimuloFiscal/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Id,LimiteInferior,Subsidio")] TablaISRSinEstimuloFiscal tablaisrsinestimulofiscal)
        {
            if (ModelState.IsValid)
            {
                db.TablaISRSinEstimuloFiscals.Add(tablaisrsinestimulofiscal);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tablaisrsinestimulofiscal);
        }

        // GET: /TablaISRSinEstimuloFiscal/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISRSinEstimuloFiscal tablaisrsinestimulofiscal = db.TablaISRSinEstimuloFiscals.Find(id);
            if (tablaisrsinestimulofiscal == null)
            {
                return HttpNotFound();
            }
            return View(tablaisrsinestimulofiscal);
        }

        // POST: /TablaISRSinEstimuloFiscal/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Id,LimiteInferior,Subsidio")] TablaISRSinEstimuloFiscal tablaisrsinestimulofiscal)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tablaisrsinestimulofiscal).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tablaisrsinestimulofiscal);
        }

        // GET: /TablaISRSinEstimuloFiscal/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISRSinEstimuloFiscal tablaisrsinestimulofiscal = db.TablaISRSinEstimuloFiscals.Find(id);
            if (tablaisrsinestimulofiscal == null)
            {
                return HttpNotFound();
            }
            return View(tablaisrsinestimulofiscal);
        }

        // POST: /TablaISRSinEstimuloFiscal/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            TablaISRSinEstimuloFiscal tablaisrsinestimulofiscal = db.TablaISRSinEstimuloFiscals.Find(id);
            db.TablaISRSinEstimuloFiscals.Remove(tablaisrsinestimulofiscal);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
