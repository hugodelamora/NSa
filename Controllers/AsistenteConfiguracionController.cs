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
    [Authorize]
    public class AsistenteConfiguracionController : Controller 
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /AsistenteConfiguracion/
        public ActionResult Index()
        {
            return View();
        }

        // GET: /AsistenteConfiguracion/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AsistenteConfiguracion asistenteconfiguracion = db.AsistenteConfiguracions.Find(id);
            if (asistenteconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(asistenteconfiguracion);
        }

        // GET: /AsistenteConfiguracion/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /AsistenteConfiguracion/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="AsistenteConfiguracionId")] AsistenteConfiguracion asistenteconfiguracion)
        {
            if (ModelState.IsValid)
            {
                db.AsistenteConfiguracions.Add(asistenteconfiguracion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(asistenteconfiguracion);
        }

        // GET: /AsistenteConfiguracion/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AsistenteConfiguracion asistenteconfiguracion = db.AsistenteConfiguracions.Find(id);
            if (asistenteconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(asistenteconfiguracion);
        }

        // POST: /AsistenteConfiguracion/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="AsistenteConfiguracionId")] AsistenteConfiguracion asistenteconfiguracion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(asistenteconfiguracion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(asistenteconfiguracion);
        }

        // GET: /AsistenteConfiguracion/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AsistenteConfiguracion asistenteconfiguracion = db.AsistenteConfiguracions.Find(id);
            if (asistenteconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(asistenteconfiguracion);
        }

        // POST: /AsistenteConfiguracion/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AsistenteConfiguracion asistenteconfiguracion = db.AsistenteConfiguracions.Find(id);
            db.AsistenteConfiguracions.Remove(asistenteconfiguracion);
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
