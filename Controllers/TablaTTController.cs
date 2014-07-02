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
    public class TablaTTController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /TablaTT/
        public ActionResult Index()
        {
            return View(db.TablaTTs.ToList());
        }

        // GET: /TablaTT/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaTT tablatt = db.TablaTTs.Find(id);
            if (tablatt == null)
            {
                return HttpNotFound();
            }
            return View(tablatt);
        }

        // GET: /TablaTT/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TablaTT/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="id,Periodo,TablaTT1,TablaTT2,TablaTT3,TablaTT4,TablaTT5,TablaTT6")] TablaTT tablatt)
        {
            if (ModelState.IsValid)
            {
                db.TablaTTs.Add(tablatt);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tablatt);
        }

        // GET: /TablaTT/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaTT tablatt = db.TablaTTs.Find(id);
            if (tablatt == null)
            {
                return HttpNotFound();
            }
            return View(tablatt);
        }

        // POST: /TablaTT/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="id,Periodo,TablaTT1,TablaTT2,TablaTT3,TablaTT4,TablaTT5,TablaTT6")] TablaTT tablatt)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tablatt).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tablatt);
        }

        // GET: /TablaTT/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TablaTT tablatt = db.TablaTTs.Find(id);
            if (tablatt == null)
            {
                return HttpNotFound();
            }
            return View(tablatt);
        }

        // POST: /TablaTT/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TablaTT tablatt = db.TablaTTs.Find(id);
            db.TablaTTs.Remove(tablatt);
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
