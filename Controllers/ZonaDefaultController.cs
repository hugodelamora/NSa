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
    public class ZonaDefaultController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /ZonaDefault/
        public ActionResult Index()
        {
            return View(db.ZonaDefaults.ToList());
        }

        // GET: /ZonaDefault/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ZonaDefault zonadefault = db.ZonaDefaults.Find(id);
            if (zonadefault == null)
            {
                return HttpNotFound();
            }
            return View(zonadefault);
        }

        // GET: /ZonaDefault/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /ZonaDefault/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="RFC,Zona")] ZonaDefault zonadefault)
        {
            if (ModelState.IsValid)
            {
                db.ZonaDefaults.Add(zonadefault);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(zonadefault);
        }

        // GET: /ZonaDefault/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ZonaDefault zonadefault = db.ZonaDefaults.Find(id);
            if (zonadefault == null)
            {
                return HttpNotFound();
            }
            return View(zonadefault);
        }

        // POST: /ZonaDefault/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="RFC,Zona")] ZonaDefault zonadefault)
        {
            if (ModelState.IsValid)
            {
                db.Entry(zonadefault).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(zonadefault);
        }

        // GET: /ZonaDefault/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ZonaDefault zonadefault = db.ZonaDefaults.Find(id);
            if (zonadefault == null)
            {
                return HttpNotFound();
            }
            return View(zonadefault);
        }

        // POST: /ZonaDefault/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            ZonaDefault zonadefault = db.ZonaDefaults.Find(id);
            db.ZonaDefaults.Remove(zonadefault);
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
