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
    public class TablaPController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TablaP/
        public ActionResult Index()
        {
            return View(db.TablaPs.ToList());
        }

        // GET: /TablaP/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaP tablap = db.TablaPs.Find(id);
            if (tablap == null)
            {
                return HttpNotFound();
            }
            return View(tablap);
        }

        // GET: /TablaP/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TablaP/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="id,Periodo,TablaP1,TablaP2,TablaP3,TablaP4,TablaP5,TablaP6,TablaP7,TablaP8,TablaP9,TablaP10")] TablaP tablap)
        {
            if (ModelState.IsValid)
            {
                db.TablaPs.Add(tablap);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tablap);
        }

        // GET: /TablaP/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaP tablap = db.TablaPs.Find(id);
            if (tablap == null)
            {
                return HttpNotFound();
            }
            return View(tablap);
        }

        // POST: /TablaP/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="id,Periodo,TablaP1,TablaP2,TablaP3,TablaP4,TablaP5,TablaP6,TablaP7,TablaP8,TablaP9,TablaP10")] TablaP tablap)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tablap).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tablap);
        }

        // GET: /TablaP/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaP tablap = db.TablaPs.Find(id);
            if (tablap == null)
            {
                return HttpNotFound();
            }
            return View(tablap);
        }

        // POST: /TablaP/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TablaP tablap = db.TablaPs.Find(id);
            db.TablaPs.Remove(tablap);
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
