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
    public class TablaISR1Controller : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TablaISR1/
        public ActionResult Index()
        {
            return View(db.TablaISR1.ToList());
        }

        // GET: /TablaISR1/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISR1 tablaisr1 = db.TablaISR1.Find(id);
            if (tablaisr1 == null)
            {
                return HttpNotFound();
            }
            return View(tablaisr1);
        }

        // GET: /TablaISR1/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TablaISR1/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Id,LimiteInferior,CuotaFija,Porcentajetarifa")] TablaISR1 tablaisr1)
        {
            if (ModelState.IsValid)
            {
                db.TablaISR1.Add(tablaisr1);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tablaisr1);
        }

        // GET: /TablaISR1/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISR1 tablaisr1 = db.TablaISR1.Find(id);
            if (tablaisr1 == null)
            {
                return HttpNotFound();
            }
            return View(tablaisr1);
        }

        // POST: /TablaISR1/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Id,LimiteInferior,CuotaFija,Porcentajetarifa")] TablaISR1 tablaisr1)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tablaisr1).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tablaisr1);
        }

        // GET: /TablaISR1/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISR1 tablaisr1 = db.TablaISR1.Find(id);
            if (tablaisr1 == null)
            {
                return HttpNotFound();
            }
            return View(tablaisr1);
        }

        // POST: /TablaISR1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            TablaISR1 tablaisr1 = db.TablaISR1.Find(id);
            db.TablaISR1.Remove(tablaisr1);
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
