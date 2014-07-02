using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using NominasSAT.Models;

namespace NominasSAT.Controllers
{
    public class FormadePagoController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /FormadePago/
        public ActionResult Index()
        {
            return View(db.FormadePagoes.ToList());
        }

        // GET: /FormadePago/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FormadePago formadepago = db.FormadePagoes.Find(id);
            if (formadepago == null)
            {
                return HttpNotFound();
            }
            return View(formadepago);
        }

        // GET: /FormadePago/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /FormadePago/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="PagoId,Nombre,Indice")] FormadePago formadepago)
        {
            if (ModelState.IsValid)
            {
                db.FormadePagoes.Add(formadepago);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(formadepago);
        }

        // GET: /FormadePago/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FormadePago formadepago = db.FormadePagoes.Find(id);
            if (formadepago == null)
            {
                return HttpNotFound();
            }
            return View(formadepago);
        }

        // POST: /FormadePago/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="PagoId,Nombre,Indice")] FormadePago formadepago)
        {
            if (ModelState.IsValid)
            {
                db.Entry(formadepago).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(formadepago);
        }

        // GET: /FormadePago/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FormadePago formadepago = db.FormadePagoes.Find(id);
            if (formadepago == null)
            {
                return HttpNotFound();
            }
            return View(formadepago);
        }

        // POST: /FormadePago/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FormadePago formadepago = db.FormadePagoes.Find(id);
            db.FormadePagoes.Remove(formadepago);
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
