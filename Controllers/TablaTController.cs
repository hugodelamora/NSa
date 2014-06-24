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
    public class TablaTController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TablaT/
        public ActionResult Index()
        {
            return View(db.TablaTs.ToList());
        }

        // GET: /TablaT/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaT tablat = db.TablaTs.Find(id);
            if (tablat == null)
            {
                return HttpNotFound();
            }
            return View(tablat);
        }

        // GET: /TablaT/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TablaT/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="id,Periodo,TablaT1,TablaT2,TablaT3,TablaT4,TablaT5,TablaT6")] TablaT tablat)
        {
            if (ModelState.IsValid)
            {
                db.TablaTs.Add(tablat);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tablat);
        }

        // GET: /TablaT/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaT tablat = db.TablaTs.Find(id);
            if (tablat == null)
            {
                return HttpNotFound();
            }
            return View(tablat);
        }

        // POST: /TablaT/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="id,Periodo,TablaT1,TablaT2,TablaT3,TablaT4,TablaT5,TablaT6")] TablaT tablat)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tablat).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tablat);
        }

        // GET: /TablaT/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaT tablat = db.TablaTs.Find(id);
            if (tablat == null)
            {
                return HttpNotFound();
            }
            return View(tablat);
        }

        // POST: /TablaT/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TablaT tablat = db.TablaTs.Find(id);
            db.TablaTs.Remove(tablat);
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
