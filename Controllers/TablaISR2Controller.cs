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
    public class TablaISR2Controller : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TablaISR2/
        public ActionResult Index()
        {
            return View(db.TablaISR2.ToList());
        }

        // GET: /TablaISR2/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISR2 tablaisr2 = db.TablaISR2.Find(id);
            if (tablaisr2 == null)
            {
                return HttpNotFound();
            }
            return View(tablaisr2);
        }

        // GET: /TablaISR2/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TablaISR2/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Id,LimiteInferior,Subsidio")] TablaISR2 tablaisr2)
        {
            if (ModelState.IsValid)
            {
                db.TablaISR2.Add(tablaisr2);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tablaisr2);
        }

        // GET: /TablaISR2/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISR2 tablaisr2 = db.TablaISR2.Find(id);
            if (tablaisr2 == null)
            {
                return HttpNotFound();
            }
            return View(tablaisr2);
        }

        // POST: /TablaISR2/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Id,LimiteInferior,Subsidio")] TablaISR2 tablaisr2)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tablaisr2).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tablaisr2);
        }

        // GET: /TablaISR2/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaISR2 tablaisr2 = db.TablaISR2.Find(id);
            if (tablaisr2 == null)
            {
                return HttpNotFound();
            }
            return View(tablaisr2);
        }

        // POST: /TablaISR2/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            TablaISR2 tablaisr2 = db.TablaISR2.Find(id);
            db.TablaISR2.Remove(tablaisr2);
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
