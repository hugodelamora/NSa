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
    public class LicenciaController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /Licencia/
        public ActionResult Index()
        {
            var licencias = db.Licencias.Include(l => l.Empresa);
            return View(licencias.ToList());
        }

        // GET: /Licencia/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Licencia licencia = db.Licencias.Find(id);
            if (licencia == null)
            {
                return HttpNotFound();
            }
            return View(licencia);
        }

        // GET: /Licencia/Create
        public ActionResult Create()
        {
            ViewBag.EmpresaId = new SelectList(db.Empresas, "EmpresaId", "Nombre");
            return View();
        }

        // POST: /Licencia/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="LicenseId,SerialNumber,ExpirationDate,EmpresaId")] Licencia licencia)
        {
            if (ModelState.IsValid)
            {
                db.Licencias.Add(licencia);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EmpresaId = new SelectList(db.Empresas, "EmpresaId", "Nombre", licencia.EmpresaId);
            return View(licencia);
        }

        // GET: /Licencia/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Licencia licencia = db.Licencias.Find(id);
            if (licencia == null)
            {
                return HttpNotFound();
            }
            ViewBag.EmpresaId = new SelectList(db.Empresas, "EmpresaId", "Nombre", licencia.EmpresaId);
            return View(licencia);
        }

        // POST: /Licencia/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="LicenseId,SerialNumber,ExpirationDate,EmpresaId")] Licencia licencia)
        {
            if (ModelState.IsValid)
            {
                db.Entry(licencia).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EmpresaId = new SelectList(db.Empresas, "EmpresaId", "Nombre", licencia.EmpresaId);
            return View(licencia);
        }

        // GET: /Licencia/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Licencia licencia = db.Licencias.Find(id);
            if (licencia == null)
            {
                return HttpNotFound();
            }
            return View(licencia);
        }

        // POST: /Licencia/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Licencia licencia = db.Licencias.Find(id);
            db.Licencias.Remove(licencia);
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
