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
    public class ISRLimitesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /ISRLimites/
        public ActionResult Index()
        {
            return View(db.ISRLimites.ToList());
        }

        // GET: /ISRLimites/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ISRLimites isrlimites = db.ISRLimites.Find(id);
            if (isrlimites == null)
            {
                return HttpNotFound();
            }
            return View(isrlimites);
        }

        // GET: /ISRLimites/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /ISRLimites/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="id,QuintoLimiteInferior,CantidadQuintoNivel,DiasTarifa")] ISRLimites isrlimites)
        {
            if (ModelState.IsValid)
            {
                db.ISRLimites.Add(isrlimites);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(isrlimites);
        }

        // GET: /ISRLimites/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ISRLimites isrlimites = db.ISRLimites.Find(id);
            if (isrlimites == null)
            {
                return HttpNotFound();
            }
            return View(isrlimites);
        }

        // POST: /ISRLimites/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="id,QuintoLimiteInferior,CantidadQuintoNivel,DiasTarifa")] ISRLimites isrlimites)
        {
            if (ModelState.IsValid)
            {
                db.Entry(isrlimites).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(isrlimites);
        }

        // GET: /ISRLimites/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ISRLimites isrlimites = db.ISRLimites.Find(id);
            if (isrlimites == null)
            {
                return HttpNotFound();
            }
            return View(isrlimites);
        }

        // POST: /ISRLimites/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ISRLimites isrlimites = db.ISRLimites.Find(id);
            db.ISRLimites.Remove(isrlimites);
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
