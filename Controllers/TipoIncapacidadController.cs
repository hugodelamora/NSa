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
    public class TipoIncapacidadController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TipoIncapacidad/
        public ActionResult Index()
        {
            return View(db.TipoIncapacidads.ToList());
        }

        // GET: /TipoIncapacidad/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoIncapacidad tipoincapacidad = db.TipoIncapacidads.Find(id);
            if (tipoincapacidad == null)
            {
                return HttpNotFound();
            }
            return View(tipoincapacidad);
        }

        // GET: /TipoIncapacidad/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TipoIncapacidad/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Clave,Descripcion")] TipoIncapacidad tipoincapacidad)
        {
            if (ModelState.IsValid)
            {
                db.TipoIncapacidads.Add(tipoincapacidad);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipoincapacidad);
        }

        // GET: /TipoIncapacidad/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoIncapacidad tipoincapacidad = db.TipoIncapacidads.Find(id);
            if (tipoincapacidad == null)
            {
                return HttpNotFound();
            }
            return View(tipoincapacidad);
        }

        // POST: /TipoIncapacidad/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Clave,Descripcion")] TipoIncapacidad tipoincapacidad)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipoincapacidad).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipoincapacidad);
        }

        // GET: /TipoIncapacidad/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoIncapacidad tipoincapacidad = db.TipoIncapacidads.Find(id);
            if (tipoincapacidad == null)
            {
                return HttpNotFound();
            }
            return View(tipoincapacidad);
        }

        // POST: /TipoIncapacidad/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TipoIncapacidad tipoincapacidad = db.TipoIncapacidads.Find(id);
            db.TipoIncapacidads.Remove(tipoincapacidad);
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
