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
    public class SalarioMinimoConfiguracionController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /SalarioMinimoConfiguracion/
        public ActionResult Index()
        {
            return View(db.SalarioMinimoConfiguracions.ToList());
        }

        // GET: /SalarioMinimoConfiguracion/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalarioMinimoConfiguracion salariominimoconfiguracion = db.SalarioMinimoConfiguracions.Find(id);
            if (salariominimoconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(salariominimoconfiguracion);
        }

        // GET: /SalarioMinimoConfiguracion/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /SalarioMinimoConfiguracion/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="RFC,Monto")] SalarioMinimoConfiguracion salariominimoconfiguracion)
        {
            if (ModelState.IsValid)
            {
                db.SalarioMinimoConfiguracions.Add(salariominimoconfiguracion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(salariominimoconfiguracion);
        }

        // GET: /SalarioMinimoConfiguracion/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalarioMinimoConfiguracion salariominimoconfiguracion = db.SalarioMinimoConfiguracions.Find(id);
            if (salariominimoconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(salariominimoconfiguracion);
        }

        // POST: /SalarioMinimoConfiguracion/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="RFC,Monto")] SalarioMinimoConfiguracion salariominimoconfiguracion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(salariominimoconfiguracion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(salariominimoconfiguracion);
        }

        // GET: /SalarioMinimoConfiguracion/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalarioMinimoConfiguracion salariominimoconfiguracion = db.SalarioMinimoConfiguracions.Find(id);
            if (salariominimoconfiguracion == null)
            {
                return HttpNotFound();
            }
            return View(salariominimoconfiguracion);
        }

        // POST: /SalarioMinimoConfiguracion/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            SalarioMinimoConfiguracion salariominimoconfiguracion = db.SalarioMinimoConfiguracions.Find(id);
            db.SalarioMinimoConfiguracions.Remove(salariominimoconfiguracion);
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
