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
    public class RegimenController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /Regimen/
        public ActionResult Index()
        {
            return View(db.Regimen.ToList());
        }

        // GET: /Regimen/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Regimen regimen = db.Regimen.Find(id);
            if (regimen == null)
            {
                return HttpNotFound();
            }
            return View(regimen);
        }

        // GET: /Regimen/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Regimen/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Clave,Descripcion")] Regimen regimen)
        {
            if (ModelState.IsValid)
            {
                db.Regimen.Add(regimen);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(regimen);
        }

        // GET: /Regimen/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Regimen regimen = db.Regimen.Find(id);
            if (regimen == null)
            {
                return HttpNotFound();
            }
            return View(regimen);
        }

        // POST: /Regimen/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Clave,Descripcion")] Regimen regimen)
        {
            if (ModelState.IsValid)
            {
                db.Entry(regimen).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(regimen);
        }

        // GET: /Regimen/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Regimen regimen = db.Regimen.Find(id);
            if (regimen == null)
            {
                return HttpNotFound();
            }
            return View(regimen);
        }

        // POST: /Regimen/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Regimen regimen = db.Regimen.Find(id);
            db.Regimen.Remove(regimen);
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
