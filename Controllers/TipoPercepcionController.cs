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
    public class TipoPercepcionController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TipoPercepcion/
        public ActionResult Index()
        {
            return View(db.TipoPercepcions.ToList());
        }

        // GET: /TipoPercepcion/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoPercepcion tipopercepcion = db.TipoPercepcions.Find(id);
            if (tipopercepcion == null)
            {
                return HttpNotFound();
            }
            return View(tipopercepcion);
        }

        // GET: /TipoPercepcion/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TipoPercepcion/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Clave,Descripcion")] TipoPercepcion tipopercepcion)
        {
            if (ModelState.IsValid)
            {
                db.TipoPercepcions.Add(tipopercepcion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipopercepcion);
        }

        // GET: /TipoPercepcion/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoPercepcion tipopercepcion = db.TipoPercepcions.Find(id);
            if (tipopercepcion == null)
            {
                return HttpNotFound();
            }
            return View(tipopercepcion);
        }

        // POST: /TipoPercepcion/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Clave,Descripcion")] TipoPercepcion tipopercepcion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipopercepcion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipopercepcion);
        }

        // GET: /TipoPercepcion/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoPercepcion tipopercepcion = db.TipoPercepcions.Find(id);
            if (tipopercepcion == null)
            {
                return HttpNotFound();
            }
            return View(tipopercepcion);
        }

        // POST: /TipoPercepcion/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            TipoPercepcion tipopercepcion = db.TipoPercepcions.Find(id);
            db.TipoPercepcions.Remove(tipopercepcion);
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
