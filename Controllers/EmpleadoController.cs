using System;
using System.Collections.Generic;
//using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using NominasSAT.Models;
using Newtonsoft.Json;

namespace NominasSAT.Controllers
{
    public class EmpleadoController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /Empleado/
        public ActionResult Index()
        {
            string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC;
            return View(db.Empleadoes.Where(x => x.RFCPatron == RFCPatron).ToList());
        }

        // GET: /Empleado/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleado empleado = db.Empleadoes.Find(id);
            if (empleado == null)
            {
                return HttpNotFound();
            }
            return View(empleado);
        }

        // GET: /Empleado/Details/5
        public string DetailsAjax(int? id)
        {
            if (id == null)
            {
                return "";
            }
            Empleado empleado = db.Empleadoes.Find(id);
            if (empleado == null)
            {
                return "";
            }
            return JsonConvert.SerializeObject(empleado);

        }
        // GET: /Empleado/Create
        public ActionResult Create()
        {
            string RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC;
            ViewBag.empleados = db.Empleadoes.Where(x => x.RFCPatron == RFCPatron).ToList();
            
                
            return View();
        }

        // POST: /Empleado/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="Codigo,Nombre,RFC,CURP,NumSeguroSocial,SalarioDiario,SBC,FechaInicioLaboral,NumdeEmpleado,Regimen,Departamento,CLABE,Banco,Puesto,TipoContrato,TipoJornada,PeriodicidadPago,RiesgoPuesto,RFCPatron,Pais,Estado,Localidad,Municipio,Calle,NumeroExterior,NumeroInterior,Colonia,CP,Email")] Empleado empleado)
        {
            if (ModelState.IsValid)
            {
                empleado.RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // agregamos la referenncia del RFC del usuario logueado
                db.Empleadoes.Add(empleado);
                db.SaveChanges();
                return RedirectToAction("Create");
            }

            return View(empleado);
        }

        // GET: /Empleado/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleado empleado = db.Empleadoes.Find(id);
            if (empleado == null)
            {
                return HttpNotFound();
            }
            return View(empleado);
        }

        // POST: /Empleado/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="Codigo,Nombre,RFC,CURP,NumSeguroSocial,SalarioDiario,SBC,FechaInicioLaboral,NumdeEmpleado,Regimen,Departamento,CLABE,Banco,Puesto,TipoContrato,TipoJornada,PeriodicidadPago,RiesgoPuesto,RFCPatron,Pais,Estado,Localidad,Municipio,Calle,NumeroExterior,NumeroInterior,Colonia,CP,Email")] Empleado empleado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(empleado).State = EntityState.Modified;
                empleado.RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // agregamos la referenncia del RFC del usuario logueado
                db.SaveChanges();
                return RedirectToAction("Create");
            }
            return View(empleado);
        }

        // GET: /Empleado/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleado empleado = db.Empleadoes.Find(id);
            if (empleado == null)
            {
                return HttpNotFound();
            }
            return View(empleado);
        }

        // POST: /Empleado/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Empleado empleado = db.Empleadoes.Find(id);
            db.Empleadoes.Remove(empleado);
            db.SaveChanges();
            return RedirectToAction("Create");
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
