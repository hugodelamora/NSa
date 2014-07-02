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
    public class NominaPeriodosController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /NominaPeriodos/
        public ActionResult Index()
        {
            return View(db.NominaPeriodos.ToList());
        }

        // GET: /NominaPeriodos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NominaPeriodos nominaperiodos = db.NominaPeriodos.Find(id);
            if (nominaperiodos == null)
            {
                return HttpNotFound();
            }
            return View(nominaperiodos);
        }

        // GET: /NominaPeriodos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /NominaPeriodos/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="NominaPeriodoId,RFCPatron,Empresa,Nombre,FechaInicioPeriodo,FechaFinPeriodo,TipoPeriodo,FechaPagoPeriodo,FormaPago")] NominaPeriodos nominaperiodos)
        {
            if (ModelState.IsValid)
            {
                db.NominaPeriodos.Add(nominaperiodos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nominaperiodos);
        }

        // GET: /NominaPeriodos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NominaPeriodos nominaperiodos = db.NominaPeriodos.Find(id);
            if (nominaperiodos == null)
            {
                return HttpNotFound();
            }
            return View(nominaperiodos);
        }

        // POST: /NominaPeriodos/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="NominaPeriodoId,RFCPatron,Empresa,Nombre,FechaInicioPeriodo,FechaFinPeriodo,TipoPeriodo,FechaPagoPeriodo,FormaPago")] NominaPeriodos nominaperiodos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nominaperiodos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nominaperiodos);
        }

        // GET: /NominaPeriodos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NominaPeriodos nominaperiodos = db.NominaPeriodos.Find(id);
            if (nominaperiodos == null)
            {
                return HttpNotFound();
            }
            return View(nominaperiodos);
        }

        // POST: /NominaPeriodos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NominaPeriodos nominaperiodos = db.NominaPeriodos.Find(id);
            db.NominaPeriodos.Remove(nominaperiodos);
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
