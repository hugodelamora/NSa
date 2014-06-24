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
    public class SalarioMinimoController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /SalarioMinimo/
        public ActionResult Index()
        {
            return View(db.SalarioMinimoes.ToList());
        }

        // GET: /SalarioMinimo/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalarioMinimo salariominimo = db.SalarioMinimoes.Find(id);
            if (salariominimo == null)
            {
                return HttpNotFound();
            }
            return View(salariominimo);
        }

        // GET: /SalarioMinimo/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /SalarioMinimo/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Zona,Monto")] SalarioMinimo salariominimo)
        {
            if (ModelState.IsValid)
            {
                db.SalarioMinimoes.Add(salariominimo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(salariominimo);
        }

        // GET: /SalarioMinimo/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalarioMinimo salariominimo = db.SalarioMinimoes.Find(id);
            if (salariominimo == null)
            {
                return HttpNotFound();
            }
            return View(salariominimo);
        }

        // POST: /SalarioMinimo/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Zona,Monto")] SalarioMinimo salariominimo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(salariominimo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(salariominimo);
        }

        // GET: /SalarioMinimo/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalarioMinimo salariominimo = db.SalarioMinimoes.Find(id);
            if (salariominimo == null)
            {
                return HttpNotFound();
            }
            return View(salariominimo);
        }

        // POST: /SalarioMinimo/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            SalarioMinimo salariominimo = db.SalarioMinimoes.Find(id);
            db.SalarioMinimoes.Remove(salariominimo);
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
