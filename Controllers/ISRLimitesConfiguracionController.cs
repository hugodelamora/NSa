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
    public class ISRLimitesConfiguracionController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /ISRLimitesConfiguracion/
        public ActionResult Index()
        {
            return View(db.ISRLimitesConfiguracions.ToList());
        }

        // GET: /ISRLimitesConfiguracion/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ISRLimitesConfiguracion isrlimitesconfiguracion = db.ISRLimitesConfiguracions.Find(id);
            if (isrlimitesconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(isrlimitesconfiguracion);
        }

        // GET: /ISRLimitesConfiguracion/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /ISRLimitesConfiguracion/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="RFC,QuintoLimiteInferior,CantidadQuintoNivel,DiasTarifa")] ISRLimitesConfiguracion isrlimitesconfiguracion)
        {
            if (ModelState.IsValid)
            {
                db.ISRLimitesConfiguracions.Add(isrlimitesconfiguracion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(isrlimitesconfiguracion);
        }

        // GET: /ISRLimitesConfiguracion/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ISRLimitesConfiguracion isrlimitesconfiguracion = db.ISRLimitesConfiguracions.Find(id);
            if (isrlimitesconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(isrlimitesconfiguracion);
        }

        // POST: /ISRLimitesConfiguracion/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="RFC,QuintoLimiteInferior,CantidadQuintoNivel,DiasTarifa")] ISRLimitesConfiguracion isrlimitesconfiguracion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(isrlimitesconfiguracion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(isrlimitesconfiguracion);
        }

        // GET: /ISRLimitesConfiguracion/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ISRLimitesConfiguracion isrlimitesconfiguracion = db.ISRLimitesConfiguracions.Find(id);
            if (isrlimitesconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(isrlimitesconfiguracion);
        }

        // POST: /ISRLimitesConfiguracion/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            ISRLimitesConfiguracion isrlimitesconfiguracion = db.ISRLimitesConfiguracions.Find(id);
            db.ISRLimitesConfiguracions.Remove(isrlimitesconfiguracion);
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
