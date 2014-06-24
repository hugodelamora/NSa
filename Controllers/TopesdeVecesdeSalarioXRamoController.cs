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
    public class TopesdeVecesdeSalarioXRamoController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();
        
        // GET: /TopesdeVecesdeSalarioXRamo/
        public ActionResult Index()
        {
            return View(db.TopesdeVecesdeSalarioXRamoes.ToList());
        }

        // GET: /TopesdeVecesdeSalarioXRamo/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TopesdeVecesdeSalarioXRamo topesdevecesdesalarioxramo = db.TopesdeVecesdeSalarioXRamoes.Find(id);
            if (topesdevecesdesalarioxramo == null)
            {
                return HttpNotFound();
            }
            return View(topesdevecesdesalarioxramo);
        }

        // GET: /TopesdeVecesdeSalarioXRamo/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /TopesdeVecesdeSalarioXRamo/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="id,Periodo,Tope1,Tope2,Tope3,Tope4,Tope5,Tope6,Tope7,Tope8,Tope9,Tope10")] TopesdeVecesdeSalarioXRamo topesdevecesdesalarioxramo)
        {
            if (ModelState.IsValid)
            {
                db.TopesdeVecesdeSalarioXRamoes.Add(topesdevecesdesalarioxramo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(topesdevecesdesalarioxramo);
        }

        // GET: /TopesdeVecesdeSalarioXRamo/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TopesdeVecesdeSalarioXRamo topesdevecesdesalarioxramo = db.TopesdeVecesdeSalarioXRamoes.Find(id);
            if (topesdevecesdesalarioxramo == null)
            {
                return HttpNotFound();
            }
            return View(topesdevecesdesalarioxramo);
        }

        // POST: /TopesdeVecesdeSalarioXRamo/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="id,Periodo,Tope1,Tope2,Tope3,Tope4,Tope5,Tope6,Tope7,Tope8,Tope9,Tope10")] TopesdeVecesdeSalarioXRamo topesdevecesdesalarioxramo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(topesdevecesdesalarioxramo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(topesdevecesdesalarioxramo);
        }

        // GET: /TopesdeVecesdeSalarioXRamo/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TopesdeVecesdeSalarioXRamo topesdevecesdesalarioxramo = db.TopesdeVecesdeSalarioXRamoes.Find(id);
            if (topesdevecesdesalarioxramo == null)
            {
                return HttpNotFound();
            }
            return View(topesdevecesdesalarioxramo);
        }

        // POST: /TopesdeVecesdeSalarioXRamo/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TopesdeVecesdeSalarioXRamo topesdevecesdesalarioxramo = db.TopesdeVecesdeSalarioXRamoes.Find(id);
            db.TopesdeVecesdeSalarioXRamoes.Remove(topesdevecesdesalarioxramo);
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
