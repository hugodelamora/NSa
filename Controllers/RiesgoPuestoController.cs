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
    public class RiesgoPuestoController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /RiesgoPuesto/
        public ActionResult Index()
        {
            return View(db.RiesgoPuestoes.ToList());
        }

        // GET: /RiesgoPuesto/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            RiesgoPuesto riesgopuesto = db.RiesgoPuestoes.Find(id);
            if (riesgopuesto == null)
            {
                return HttpNotFound();
            }
            return View(riesgopuesto);
        }

        // GET: /RiesgoPuesto/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /RiesgoPuesto/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Clave,Descripcion")] RiesgoPuesto riesgopuesto)
        {
            if (ModelState.IsValid)
            {
                db.RiesgoPuestoes.Add(riesgopuesto);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(riesgopuesto);
        }

        // GET: /RiesgoPuesto/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            RiesgoPuesto riesgopuesto = db.RiesgoPuestoes.Find(id);
            if (riesgopuesto == null)
            {
                return HttpNotFound();
            }
            return View(riesgopuesto);
        }

        // POST: /RiesgoPuesto/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Clave,Descripcion")] RiesgoPuesto riesgopuesto)
        {
            if (ModelState.IsValid)
            {
                db.Entry(riesgopuesto).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(riesgopuesto);
        }

        // GET: /RiesgoPuesto/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            RiesgoPuesto riesgopuesto = db.RiesgoPuestoes.Find(id);
            if (riesgopuesto == null)
            {
                return HttpNotFound();
            }
            return View(riesgopuesto);
        }

        // POST: /RiesgoPuesto/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            RiesgoPuesto riesgopuesto = db.RiesgoPuestoes.Find(id);
            db.RiesgoPuestoes.Remove(riesgopuesto);
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
