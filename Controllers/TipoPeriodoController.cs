using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using NominasSAT.Models;

namespace NominasSAT.Controllers
{
    public class TipoPeriodoController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TipoPeriodo/
        public ActionResult Index()
        {
            return View(db.TipoPeriodoes.ToList());
        }

        // GET: /TipoPeriodo/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoPeriodo tipoperiodo = db.TipoPeriodoes.Find(id);
            if (tipoperiodo == null)
            {
                return HttpNotFound();
            }
            return View(tipoperiodo);
        }

        // GET: /TipoPeriodo/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TipoPeriodo/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="PeriodoId,Nombre,DiasMin,DiasMax,Indice")] TipoPeriodo tipoperiodo)
        {
            if (ModelState.IsValid)
            {
                db.TipoPeriodoes.Add(tipoperiodo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipoperiodo);
        }

        // GET: /TipoPeriodo/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoPeriodo tipoperiodo = db.TipoPeriodoes.Find(id);
            if (tipoperiodo == null)
            {
                return HttpNotFound();
            }
            return View(tipoperiodo);
        }

        // POST: /TipoPeriodo/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="PeriodoId,Nombre,DiasMin,DiasMax,Indice")] TipoPeriodo tipoperiodo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipoperiodo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipoperiodo);
        }

        // GET: /TipoPeriodo/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoPeriodo tipoperiodo = db.TipoPeriodoes.Find(id);
            if (tipoperiodo == null)
            {
                return HttpNotFound();
            }
            return View(tipoperiodo);
        }

        // POST: /TipoPeriodo/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TipoPeriodo tipoperiodo = db.TipoPeriodoes.Find(id);
            db.TipoPeriodoes.Remove(tipoperiodo);
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
