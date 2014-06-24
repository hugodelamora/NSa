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
    public class PeriodoConfiguracionController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /PeriodoConfiguracion/
        public ActionResult Index()
        {
            return View(db.PeriodoConfiguracions.ToList());
        }

        // GET: /PeriodoConfiguracion/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PeriodoConfiguracion periodoconfiguracion = db.PeriodoConfiguracions.Find(id);
            if (periodoconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(periodoconfiguracion);
        }

        // GET: /PeriodoConfiguracion/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /PeriodoConfiguracion/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="RFC,Periodo")] PeriodoConfiguracion periodoconfiguracion)
        {
            if (ModelState.IsValid)
            {
                db.PeriodoConfiguracions.Add(periodoconfiguracion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(periodoconfiguracion);
        }

        // GET: /PeriodoConfiguracion/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PeriodoConfiguracion periodoconfiguracion = db.PeriodoConfiguracions.Find(id);
            if (periodoconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(periodoconfiguracion);
        }

        // POST: /PeriodoConfiguracion/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="RFC,Periodo")] PeriodoConfiguracion periodoconfiguracion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(periodoconfiguracion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(periodoconfiguracion);
        }

        // GET: /PeriodoConfiguracion/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PeriodoConfiguracion periodoconfiguracion = db.PeriodoConfiguracions.Find(id);
            if (periodoconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(periodoconfiguracion);
        }

        // POST: /PeriodoConfiguracion/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            PeriodoConfiguracion periodoconfiguracion = db.PeriodoConfiguracions.Find(id);
            db.PeriodoConfiguracions.Remove(periodoconfiguracion);
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
