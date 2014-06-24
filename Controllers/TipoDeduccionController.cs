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
    public class TipoDeduccionController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TipoDeduccion/
        public ActionResult Index()
        {
            return View(db.TipoDeduccions.ToList());
        }

        // GET: /TipoDeduccion/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDeduccion tipodeduccion = db.TipoDeduccions.Find(id);
            if (tipodeduccion == null)
            {
                return HttpNotFound();
            }
            return View(tipodeduccion);
        }

        // GET: /TipoDeduccion/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TipoDeduccion/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Clave,Descripcion,Comentario")] TipoDeduccion tipodeduccion)
        {
            if (ModelState.IsValid)
            {
                db.TipoDeduccions.Add(tipodeduccion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipodeduccion);
        }

        // GET: /TipoDeduccion/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDeduccion tipodeduccion = db.TipoDeduccions.Find(id);
            if (tipodeduccion == null)
            {
                return HttpNotFound();
            }
            return View(tipodeduccion);
        }

        // POST: /TipoDeduccion/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Clave,Descripcion,Comentario")] TipoDeduccion tipodeduccion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipodeduccion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipodeduccion);
        }

        // GET: /TipoDeduccion/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDeduccion tipodeduccion = db.TipoDeduccions.Find(id);
            if (tipodeduccion == null)
            {
                return HttpNotFound();
            }
            return View(tipodeduccion);
        }

        // POST: /TipoDeduccion/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            TipoDeduccion tipodeduccion = db.TipoDeduccions.Find(id);
            db.TipoDeduccions.Remove(tipodeduccion);
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
