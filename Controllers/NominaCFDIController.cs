using System;
using System.Collections.Generic;
//using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using NominasSAT.Models;
using System.Xml;
using Common.Utilities;
using System.IO;
using System.Text;
using System.Xml.Serialization;
using System.Globalization;
using System.Security.Cryptography.X509Certificates;
using System.Security.Cryptography;
using System.Configuration;
using System.Xml.Schema;
using MasFacturacion.StampingConnector;
using MasFacturacion.StampingConnector.Utilities;
using MasFacturacion.StampingConnector.StampingService;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using System.Threading.Tasks;
using System.Collections;

namespace NominasSAT.Controllers
{
    [Authorize]
    public class NominaCFDIController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /NominaCFDI/
        public ActionResult Index()
        {
            return View(db.Nominas.ToList());
        }

        // GET: /NominaCFDI/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NominaCFDI nominacfdi = db.Nominas.Find(id);
            if (nominacfdi == null)
            {
                return HttpNotFound();
            }
            return View(nominacfdi);
        }

        // GET: /NominaCFDI/Create
        public ActionResult Create()
        {

            IMSSController controllerIMSS = new IMSSController();
            ISRController controllerISR = new ISRController();

            var RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // referenncia del RFC del usuario logueado

            //obtenemos la zona del salario minimo
   
            List<Empleado> empleadosFiltrados = db.Empleadoes.Where(x => x.RFCPatron == RFCPatron).ToList();

            int Periodo = controllerIMSS.getPeriodo(RFCPatron);
            
            // obtenemos las incapacidades
            List<TipoIncapacidad> incapacidadesFiltradas = db.TipoIncapacidads.ToList();
         


            // datos que mandamos por el ViewBag
           
            ViewBag.Incapacidades = incapacidadesFiltradas.Select(r => new SelectListItem { Text = r.Descripcion, Value = r.Clave.ToString() }).ToList();
            ViewBag.TARMP = controllerISR.getTARMP(RFCPatron).OrderBy(x => x.LimiteInferior);
            ViewBag.TARSP = controllerISR.getTARSP(RFCPatron).OrderBy(x => x.LimiteInferior);
            ViewBag.ZonaSalarioMin = controllerIMSS.getZona(RFCPatron).Monto;
            ViewBag.TablaTs = db.TablaTs.Where(x => x.Periodo == Periodo).ToList();
            ViewBag.TOPESC = controllerIMSS.getTopesdeVecesdeSalarioXSalarioMinimo(RFCPatron);
            ViewBag.empleados = empleadosFiltrados.Select(r => new SelectListItem { Text = r.Nombre, Value = r.Codigo.ToString() }).ToList();
            
            return View();
        }

        // POST: /NominaCFDI/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "RFC,NominaID,SalarioDiario,SBC,DiasPagar,Incidencias,Ausentismo,DiasTrabajados,HorasExtrasDobles,HorasExtrasTriples,PSueldosSalariosRayasJornales,PSueldoExcento,PSueldoGravado,PHorasExtrasDobles,PHorasExtrasTriples,PHorasExtras,PHorasExtrasExcento,PHorasExtrasGravado,PComisiones,POtros,PPrimavacacional,PTotalPercepciones,DISR,DSubsidio,D1,D2,D3,D4,D5,D6,SeguridadSocial,Infonavit")] NominaCFDI nominacfdi, string Password)
        {
            // aqui procesamos esta información en el objeto nominacfdi para meterlo a la BD, despues creamos el CFDI

            if (ModelState.IsValid)
            {
                db.Nominas.Add(nominacfdi);
                db.SaveChanges();
                // ya guardamos la info de la nomina en la BD ahora vamos a procesar a generar el CFDI
                NominaTimbrada comprobanteXML = new NominaTimbrada();
                comprobanteXML = generarCFDI(nominacfdi,Password,null,null);
                nominacfdi.XML = comprobanteXML.xml;
                db.Entry(nominacfdi).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(nominacfdi);
        }


        // GET: /NominaCFDI/Create
        [HttpGet]
        public ActionResult CreateNomina(int? id)
        {
            
            IMSSController controllerIMSS = new IMSSController();
            ISRController controllerISR = new ISRController();

            var RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // referenncia del RFC del usuario logueado

            //obtenemos la zona del salario minimo

            List<Empleado> empleadosFiltrados = db.Empleadoes.Where(x => x.RFCPatron == RFCPatron).ToList();

            int Periodo = controllerIMSS.getPeriodo(RFCPatron);

            // obtenemos las incapacidades
            List<TipoIncapacidad> incapacidadesFiltradas = db.TipoIncapacidads.ToList();

            // revisamos cual es el siguiente periodo
            int siguientePeriodo = 1;
            NominaPeriodos PeriodoNomina = new NominaPeriodos();
            // valisamos si es que tenemos que recuperar informaciión de un periodo anterior
            bool nuevoPeriodo = true;
            // creamos la variable de los empleados seleccionados porque no sabemos si nos lo vamos a traer todos o nomas los de la nomina en cuestin
            List<NominaCFDI> nominasTimradas = new List<NominaCFDI>();
            List<Empleado> empleadosSeleccionados = new List<Empleado>();
            if (id != null) {


                // aqui es de que tenemos que jalar la información del periodo especificado
                int periodoEntero = id ?? default(int);
                // validamos si el periodo existe:
                if (db.NominaPeriodos.Count(x => x.RFCPatron == RFCPatron && x.NominaPeriodoId ==periodoEntero)>0)
                {
                    // aqui tenemos los empleados que participaron solo en este periodo

                    List<NominaCFDI> empleadosTimbrados = db.Nominas.Where(x => x.NominaPeriodo == periodoEntero).ToList();
                    List<int> empleadosID = new List<int>();
                    foreach (NominaCFDI empleadotimbrado in empleadosTimbrados) // Loop through List with foreach
                    {
                        empleadosID.Add(empleadotimbrado.User);
                    }
                    int[] empleadosIDArray = empleadosID.ToArray();
                    empleadosSeleccionados = db.Empleadoes.Where(x => x.RFCPatron == RFCPatron && empleadosIDArray.Contains(x.Codigo)).ToList();
                    nuevoPeriodo = false;
                    // ahora nos traemos el perido

                    PeriodoNomina = db.NominaPeriodos.FirstOrDefault(x => x.NominaPeriodoId == periodoEntero);
                    // ahora nos traemos las nominas

                    nominasTimradas = db.Nominas.Where(x => x.NominaPeriodo == periodoEntero).ToList();
                }


            }

            if (nuevoPeriodo)
            {

                empleadosSeleccionados = db.Empleadoes.Where(x => x.RFCPatron == RFCPatron).ToList();
                PeriodoNomina.TipoPeriodo = 1;
                PeriodoNomina.Status = NominaPeriodos.StatusPeriodo.sinTimbrar;

                if (db.NominaPeriodos.Count(x => x.RFCPatron == RFCPatron) >= 1)
                {
                    // aqui es de que tenemos mas de un periodo creado
                    // ahora vemos si tenemos el ultimo periodo abierto
                    List<NominaPeriodos> periodosNominas = db.NominaPeriodos.Where(x => x.RFCPatron == RFCPatron).ToList();
                    PeriodoNomina = periodosNominas.Last();
                    if (PeriodoNomina.Status == NominaPeriodos.StatusPeriodo.timbrado)
                    {
                        siguientePeriodo = periodosNominas.Last().NumeroPeriodo + 1;
                        PeriodoNomina = new NominaPeriodos();
                    }
                    else
                    {
                        siguientePeriodo = PeriodoNomina.NumeroPeriodo;
                    }
                }

            }
           
            // datos que mandamos por el ViewBag
            ViewBag.SiguientePeriodo = siguientePeriodo;
            ViewBag.PeriodoNomina = PeriodoNomina;
            ViewBag.FormasdePago = db.FormadePagoes.OrderBy(x => x.Indice).ToList();
            ViewBag.FormasdePago = db.FormadePagoes.OrderBy(x => x.Indice).ToList();
            ViewBag.TipoPeriodos = db.TipoPeriodoes.OrderBy(x => x.Indice).ToList();
            ViewBag.empleados = empleadosSeleccionados;
            ViewBag.Incapacidades = incapacidadesFiltradas.Select(r => new SelectListItem { Text = r.Descripcion, Value = r.Clave.ToString() }).ToList();
            ViewBag.TARMP = controllerISR.getTARMP(RFCPatron).OrderBy(x => x.LimiteInferior);
            ViewBag.TARSP = controllerISR.getTARSP(RFCPatron).OrderBy(x => x.LimiteInferior);
            ViewBag.ZonaSalarioMin = controllerIMSS.getZona(RFCPatron).Monto;
            ViewBag.TablaTs = db.TablaTs.Where(x => x.Periodo == Periodo).ToList();
            ViewBag.TOPESC = controllerIMSS.getTopesdeVecesdeSalarioXSalarioMinimo(RFCPatron);
            ViewBag.empleadosFiltrados = empleadosFiltrados.Select(r => new SelectListItem { Text = r.Nombre, Value = r.Codigo.ToString() }).ToList();
            ViewBag.nominasTimradas = nominasTimradas;
            return View();
        }


        public ActionResult NuevaNomina(int NumeroPeriodo)
        {
            var RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // referenncia del RFC del usuario logueado
            NominaPeriodos PeriodoActual = new NominaPeriodos(); ;
            bool response = true;

            if (db.NominaPeriodos.Where(x => x.RFCPatron == RFCPatron && x.NumeroPeriodo == NumeroPeriodo && x.Status == NominaPeriodos.StatusPeriodo.sinTimbrar).Count() > 0)
            {
                // aqui es de que ya existe este periodo y vamos a trabajar sobre el mismo
                List<NominaPeriodos> NominasPeriodos = new List<NominaPeriodos>();
                NominasPeriodos = db.NominaPeriodos.Where(x => x.RFCPatron == RFCPatron && x.NumeroPeriodo == NumeroPeriodo).ToList();
                PeriodoActual = NominasPeriodos.Last();
                PeriodoActual.Status = NominaPeriodos.StatusPeriodo.timbrado;
                db.Entry(PeriodoActual).State = EntityState.Modified;
                db.SaveChanges();
                response = false;
            }

            ViewBag.response = response;
            return View();
           
        }

        // POST: /NominaCFDI/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateNomina([Bind(Include = "RFC,NominaID,SalarioDiario,SBC,DiasPagar,Incidencias,Ausentismo,DiasTrabajados,HorasExtrasDobles,HorasExtrasTriples,PSueldosSalariosRayasJornales,PSueldoExcento,PSueldoGravado,PHorasExtrasDobles,PHorasExtrasTriples,PHorasExtras,PHorasExtrasExcento,PHorasExtrasGravado,PComisiones,POtros,PPrimavacacional,PTotalPercepciones,DISR,DSubsidio,D1,D2,D3,D4,D5,D6,SeguridadSocial,Infonavit")] NominaCFDI nominacfdi, string Password)
        {
            // aqui procesamos esta información en el objeto nominacfdi para meterlo a la BD, despues creamos el CFDI

            if (ModelState.IsValid)
            {
                db.Nominas.Add(nominacfdi);
                db.SaveChanges();
                // ya guardamos la info de la nomina en la BD ahora vamos a procesar a generar el CFDI
                NominaTimbrada comprobanteXML = new NominaTimbrada();
                comprobanteXML = generarCFDI(nominacfdi, Password,null,null);

                nominacfdi.XML = comprobanteXML.xml;
                db.Entry(nominacfdi).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(nominacfdi);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateMasivo(string nominaCompleta, string NumeroPeriodo, string FechaInicioPeriodo, string FechaFinPeriodo, string TipoPeriodo, string FechaDePago, string FormaDePago)
        {
            // aqui procesamos esta información en el objeto nominacfdi para meterlo a la BD, despues creamos el CFDI

           

          


                JavaScriptSerializer js = new JavaScriptSerializer();
                NominaCFDI[] nominas = js.Deserialize<NominaCFDI[]>(nominaCompleta);
                Dictionary<string, string> errores = new Dictionary<string, string>();

                // obtenemos los datos del emisor
                var RFCPatron = db.Users.FirstOrDefault(y => y.UserName == User.Identity.Name).RFC; // referenncia del RFC del usuario logueado
                var empresa = db.Empresas.FirstOrDefault(x => x.RFC == RFCPatron);
                NominaPeriodos PeriodoActual = new NominaPeriodos();
                // obtenemos la información del periodo y la validamos
                int periodoEntero = int.Parse(NumeroPeriodo);
                bool PeriodoModificado = false;
                if (db.NominaPeriodos.Where(x => x.RFCPatron == RFCPatron && x.NumeroPeriodo == periodoEntero).Count() > 0)
                {
                    // aqui es de que ya existe este periodo y vamos a trabajar sobre el mismo
                    List<NominaPeriodos> NominasPeriodos = new List<NominaPeriodos>();
                    NominasPeriodos = db.NominaPeriodos.Where(x => x.RFCPatron == RFCPatron && x.NumeroPeriodo == periodoEntero).ToList();
                    PeriodoActual = NominasPeriodos.Last();
                    PeriodoModificado = true;
                }
                else
                {
                    // aqui es cuando trabajamos con un periodo nuevo
                    PeriodoActual.NumeroPeriodo = int.Parse(NumeroPeriodo);
                    PeriodoActual.RFCPatron = RFCPatron;
                    PeriodoActual.Empresa = empresa.EmpresaId;
                    PeriodoActual.FechaInicioPeriodo = FechaInicioPeriodo;
                    PeriodoActual.FechaFinPeriodo = FechaFinPeriodo;
                    PeriodoActual.TipoPeriodo = int.Parse(TipoPeriodo);
                    PeriodoActual.FechaDePago = FechaDePago;
                    PeriodoActual.FormaDePago = int.Parse(FormaDePago);
                    PeriodoActual.Status = NominaPeriodos.StatusPeriodo.sinTimbrar;

                }

               
                List<NominaTimbrada> empleadosTimbrados = new List<NominaTimbrada>();

                Task<NominaCFDI>[] tasks = new Task<NominaCFDI>[nominas.Length];
                  for(int i=0;i<nominas.Length;i++)
                {
                   
                    int empleadoID = nominas[i].User;
                    Empleado empleado = db.Empleadoes.FirstOrDefault(x => x.Codigo == empleadoID);

                      // validaciones necesrias para el esquema

                    NominaCFDI nominaActual = nominas[i];
                    nominaActual.CURP = empleado.CURP;
                    nominaActual.FechaInicioLaboral = empleado.FechaInicioLaboral.ToString();
                    nominaActual.NumSeguroSocial = empleado.NumSeguroSocial;
                    nominaActual.RFC = empleado.RFC;
                    nominaActual.NominaPeriodo = PeriodoActual.NumeroPeriodo;

                    //tasks[i] = Task<NominaCFDI>.Factory.StartNew(() =>
                    //{
                    NominaTimbrada comprobanteXML = new NominaTimbrada();
                    try { 
                     // in  var comprobanteXML tentamos cachar la nomina
                        comprobanteXML = generarCFDI(nominaActual, "12345678a", empresa, empleado);

                        empleadosTimbrados.Add(new NominaTimbrada { Empleado = empleadoID, uuid = comprobanteXML.uuid });
                     
                      nominaActual.XML = comprobanteXML.xml;

                    }
                    catch (Exception e)
                    {
                        errores.Add(empleado.Nombre, e.Message.ToString());

                    }
                        db.Nominas.Add(nominaActual);
                        db.SaveChanges();
                    //    return nominaActual;
                        
                    //});

                  

                }
                Dictionary<string,string> respuesta = new Dictionary<string,string>();

            // validamos si hay errores para cerrar la nomina o dejarla abierta
                if (errores.Count==0)
                {
                    PeriodoActual.Status = NominaPeriodos.StatusPeriodo.timbrado;
                  
                }
                if (PeriodoModificado) {
                    db.Entry(PeriodoActual).State = EntityState.Modified;
                }
                else
                {
                    db.NominaPeriodos.Add(PeriodoActual);
                   
                }
                db.SaveChanges();
                respuesta.Add("Timbres",JsonConvert.SerializeObject(empleadosTimbrados));
                respuesta.Add("Errores",JsonConvert.SerializeObject(errores));
                ViewBag.response = JsonConvert.SerializeObject(respuesta);
              
            return View();
        }


        // GET: /NominaCFDI/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NominaCFDI nominacfdi = db.Nominas.Find(id);
            if (nominacfdi == null)
            {
                return HttpNotFound();
            }
            return View(nominacfdi);
        }

        // POST: /NominaCFDI/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NominaID,SalarioDiario,SBC,DiasPagar,Incidencias,Ausentismo,DiasTrabajados,HorasExtrasDobles,HorasExtrasTriples,PSueldosSalariosRayasJornales,PSueldoExcento,PSueldoGravado,PHorasExtrasDobles,PHorasExtrasTriples,PHorasExtras,PHorasExtrasExcento,PHorasExtrasGravado,PComisiones,POtros,PPrimavacacional,PTotalPercepciones,DISR,DSubsidio,D1,D2,D3,D4,D5,D6,SeguridadSocial,Infonavit")] NominaCFDI nominacfdi)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nominacfdi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nominacfdi);
        }

        // GET: /NominaCFDI/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NominaCFDI nominacfdi = db.Nominas.Find(id);
            if (nominacfdi == null)
            {
                return HttpNotFound();
            }
            return View(nominacfdi);
        }

        // POST: /NominaCFDI/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NominaCFDI nominacfdi = db.Nominas.Find(id);
            db.Nominas.Remove(nominacfdi);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // generamos el CFDI
        public NominaTimbrada generarCFDI(NominaCFDI nominacfdi, string Password, Empresa empresa, Empleado empleado)
        {
            
         
            DateTime FechaPago = DateTime.Now;
            DateTime FechaPagoInicial = DateTime.Now;
            DateTime FechaPagoFinal  = DateTime.Now;
            DateTime FechaComprobante = DateTime.Parse(String.Format("{0:s}", DateTime.Now), CultureInfo.InvariantCulture); 
            int AntiguedadEmpleado = 1; // pendiente debemos de calcular la antiguedad en numero de años basado en el inicio de la relación laboral del objeyo empleado
            // creamos el objecto CFDI
            
            comprobante CFDI = new comprobante();

           
        
            // datos generales del comprobante
            CFDI.version = VersionCFDI.V_2012;
            CFDI.fecha = FechaComprobante;
            CFDI.folio = nominacfdi.NominaID.ToString();
            CFDI.serie = "nomina";
            CFDI.LugarExpedicion = empresa.LugarExpedicion;
            CFDI.TipoCambio = "1";
            CFDI.Moneda = "MXN";
            CFDI.noCertificado = "";
            CFDI.certificado = "";
            CFDI.subTotal = ShowDecimalRound(nominacfdi.SalarioNeto);
            CFDI.tipoDeComprobante = MasFacturacion.StampingConnector.StampingService.comprobanteTipoDeComprobante.ingreso;
            CFDI.condicionesDePago = "Pago en una sola exhibición";
            CFDI.sello = "";
            CFDI.metodoDePago ="NA";
            CFDI.formaDePago = "Pago en una sola exhibición";
            CFDI.total = ShowDecimalRound(nominacfdi.SalarioNeto);

            CFDI.Emisor = new comprobanteEmisor();


                CFDI.Emisor.rfc = empresa.RFC.ToUpper();
                CFDI.Emisor.ExpedidoEn = new MasFacturacion.StampingConnector.StampingService.t_Ubicacion();
                
                    CFDI.Emisor.ExpedidoEn.pais = empresa.Pais;
                    CFDI.Emisor.ExpedidoEn.estado = empresa.Estado;
                    CFDI.Emisor.ExpedidoEn.localidad = empresa.Localidad;
                    CFDI.Emisor.ExpedidoEn.municipio = empresa.Municipio;
                    CFDI.Emisor.ExpedidoEn.colonia = empresa.Colonia;
                    CFDI.Emisor.ExpedidoEn.calle = empresa.Calle;
                    CFDI.Emisor.ExpedidoEn.noExterior = empresa.NumeroExterior;
                    CFDI.Emisor.ExpedidoEn.noInterior = empresa.NumeroInterior;
                    CFDI.Emisor.ExpedidoEn.codigoPostal = empresa.CP;

                CFDI.Emisor.nombre = empresa.Nombre;
                CFDI.Emisor.RegimenFiscal = new comprobanteEmisorRegimenFiscal[1];
                CFDI.Emisor.RegimenFiscal[0] = new comprobanteEmisorRegimenFiscal();
                CFDI.Emisor.RegimenFiscal[0].Regimen = empresa.Regimen;

                CFDI.Emisor.DomicilioFiscal = new t_UbicacionFiscal();

                    CFDI.Emisor.DomicilioFiscal.pais = empresa.Pais;
                    CFDI.Emisor.DomicilioFiscal.estado = empresa.Estado;
                    CFDI.Emisor.DomicilioFiscal.localidad = empresa.Localidad;
                    CFDI.Emisor.DomicilioFiscal.municipio = empresa.Municipio;
                    CFDI.Emisor.DomicilioFiscal.colonia = empresa.Colonia;
                    CFDI.Emisor.DomicilioFiscal.calle = empresa.Calle;
                    CFDI.Emisor.DomicilioFiscal.noExterior = empresa.NumeroExterior;
                    CFDI.Emisor.DomicilioFiscal.noInterior = empresa.NumeroInterior;
                    CFDI.Emisor.DomicilioFiscal.codigoPostal = empresa.CP;
                

            CFDI.Receptor = new comprobanteReceptor();

                
                    CFDI.Receptor.rfc = nominacfdi.RFC.ToUpper();
                    CFDI.Receptor.nombre = empleado.Nombre;
                    CFDI.Receptor.Domicilio = new t_Ubicacion();

                    CFDI.Receptor.Domicilio.pais = String.IsNullOrEmpty(empleado.Pais) ? "México" : empleado.Pais;
                        CFDI.Receptor.Domicilio.estado = empleado.Estado;
                        CFDI.Receptor.Domicilio.localidad = empleado.Localidad;
                        CFDI.Receptor.Domicilio.municipio = empleado.Municipio;
                        CFDI.Receptor.Domicilio.colonia = empleado.Colonia;
                        CFDI.Receptor.Domicilio.calle = empleado.Calle;
                        CFDI.Receptor.Domicilio.noExterior = empleado.NumeroExterior;
                        CFDI.Receptor.Domicilio.noInterior = empleado.NumeroInterior;
                        CFDI.Receptor.Domicilio.codigoPostal = String.IsNullOrEmpty(empleado.CP) ? "00000" : empleado.CP;
                        
               
                CFDI.Conceptos = new  ArrayOfComprobanteConceptoConcepto[1];
                CFDI.Conceptos[0] = new ArrayOfComprobanteConceptoConcepto();


                    CFDI.Conceptos[0].cantidad = 1;
                    CFDI.Conceptos[0].unidad = "Unidad";
                    CFDI.Conceptos[0].descripcion = "Descripcion";
                    CFDI.Conceptos[0].noIdentificacion ="Num. Identificacion";
                    CFDI.Conceptos[0].valorUnitario = 1;
                    CFDI.Conceptos[0].importe = 1;


            CFDI.Impuestos = new MasFacturacion.StampingConnector.StampingService.comprobanteImpuestos();

               
                    CFDI.Impuestos.totalImpuestosRetenidos=1;
                    CFDI.Impuestos.totalImpuestosTrasladados=1;
                    CFDI.Impuestos.Retenciones = new ArrayOfComprobanteImpuestosRetencionRetencion[2];

                    CFDI.Impuestos.Retenciones[0] = new ArrayOfComprobanteImpuestosRetencionRetencion();
                    CFDI.Impuestos.Retenciones[0].impuesto = ArrayOfComprobanteImpuestosRetencionRetencionImpuesto.ISR;
                    CFDI.Impuestos.Retenciones[0].importe = 15;
                     
                
                    CFDI.Impuestos.Retenciones[1] = new ArrayOfComprobanteImpuestosRetencionRetencion();
                    CFDI.Impuestos.Retenciones[1].impuesto = ArrayOfComprobanteImpuestosRetencionRetencionImpuesto.IVA;
                    CFDI.Impuestos.Retenciones[1].importe = 15;


                    CFDI.Impuestos.Traslados = new ArrayOfComprobanteImpuestosTrasladoTraslado[2];
                    CFDI.Impuestos.Traslados[0] = new ArrayOfComprobanteImpuestosTrasladoTraslado();
                    CFDI.Impuestos.Traslados[0].impuesto = ArrayOfComprobanteImpuestosTrasladoTrasladoImpuesto.IVA;
                    CFDI.Impuestos.Traslados[0].tasa = 16;
                    CFDI.Impuestos.Traslados[0].importe = new decimal(0.16);
                    CFDI.Impuestos.Traslados[1] = new ArrayOfComprobanteImpuestosTrasladoTraslado();
                    CFDI.Impuestos.Traslados[1].impuesto = ArrayOfComprobanteImpuestosTrasladoTrasladoImpuesto.IEPS;
                    CFDI.Impuestos.Traslados[1].tasa = 10;
                    CFDI.Impuestos.Traslados[1].importe = new decimal(0.15);

                   

                
            
            // creamos el complemento nomina basado en la clase nomina
            Nomina NominaComplemento = new Nomina();
            
                NominaComplemento.RegistroPatronal = empresa.RegistroPatronal;
                NominaComplemento.NumEmpleado = String.IsNullOrEmpty(empleado.NumdeEmpleado) ? "0" : empleado.NumdeEmpleado;
                NominaComplemento.CURP = empleado.CURP.ToUpper();
                NominaComplemento.TipoRegimen = empleado.Regimen.GetValueOrDefault(2);
                NominaComplemento.NumSeguridadSocial = empleado.NumSeguroSocial;
                NominaComplemento.FechaPago = FechaPago;
                NominaComplemento.FechaInicialPago = FechaPagoInicial;
                NominaComplemento.FechaFinalPago = FechaPagoFinal;
                NominaComplemento.NumDiasPagados = ShowDecimalRound(nominacfdi.DiasPagar);
                NominaComplemento.Departamento = empleado.Departamento;
                NominaComplemento.CLABE = empleado.CLABE;
                NominaComplemento.Banco = empleado.Banco.GetValueOrDefault(1);
                NominaComplemento.FechaInicioRelLaboral = empleado.FechaInicioLaboral;
                NominaComplemento.Antiguedad = AntiguedadEmpleado;
                NominaComplemento.Puesto = empleado.Puesto;
                NominaComplemento.TipoContrato = empleado.TipoContrato;
                NominaComplemento.TipoJornada = empleado.TipoJornada;
                NominaComplemento.PeriodicidadPago = String.IsNullOrEmpty(empleado.PeriodicidadPago) ? "0" : empleado.PeriodicidadPago;
                NominaComplemento.SalarioBaseCotApor = ShowDecimalRound(empleado.SalarioDiario);
                NominaComplemento.RiesgoPuesto = empleado.RiesgoPuesto.GetValueOrDefault(1);
                NominaComplemento.SalarioDiarioIntegrado = ShowDecimalRound(empleado.SBC);
                NominaComplemento.Percepciones = new NominaPercepciones();
                NominaComplemento.Percepciones.Percepcion = new NominaPercepcionesPercepcion[1];

                NominaComplemento.Percepciones.Percepcion[0] =  new NominaPercepcionesPercepcion();
                
                NominaComplemento.Percepciones.Percepcion[0].Clave="001";
                NominaComplemento.Percepciones.Percepcion[0].Concepto="percepcion";
                NominaComplemento.Percepciones.Percepcion[0].ImporteExento=1;
                NominaComplemento.Percepciones.Percepcion[0].ImporteGravado=1;
                NominaComplemento.Percepciones.Percepcion[0].TipoPercepcion="001";
                    

               
                NominaComplemento.Deducciones = new NominaDeducciones();

                
                    NominaComplemento.Deducciones.Deduccion = new NominaDeduccionesDeduccion[1];
            NominaComplemento.Deducciones.Deduccion[0] =  new NominaDeduccionesDeduccion();

                        NominaComplemento.Deducciones.Deduccion[0].Clave="001";
                            NominaComplemento.Deducciones.Deduccion[0].Concepto="Deduccion";
                            NominaComplemento.Deducciones.Deduccion[0].ImporteExento=1;
                            NominaComplemento.Deducciones.Deduccion[0].ImporteGravado=1;
                            NominaComplemento.Deducciones.Deduccion[0].TipoDeduccion = "001";
                
                NominaComplemento.Version = "1.1";
                



            //creamos una lista de elementos XML
            List<XmlElement> nominaXMLElement = new List<XmlElement>();
            // creamos un documento de XML
            XmlDocument doc = new XmlDocument();
            // leemos el complemento de nomina en el objecto de xml
            doc.LoadXml(SerializeNomina(NominaComplemento));
            doc.DocumentElement.RemoveAttribute("xmlns:xsi"); // le quitamos estos namespaces porque ya se los pusimos al comprobante CFDI
            doc.DocumentElement.RemoveAttribute("xmlns:xsd");
            doc.DocumentElement.RemoveAttribute("nomina:xsd");
            //creamos un elemento de XML

            XmlElement elementoNomina = doc.DocumentElement;
            elementoNomina.RemoveAttribute("xmlns");
            elementoNomina.Prefix = "nomina";
            

              for (int i=0; elementoNomina.ChildNodes.Count>i;i++){
                  elementoNomina.ChildNodes[i].Prefix = "nomina";
                  for (int j = 0; elementoNomina.ChildNodes[i].ChildNodes.Count > j; j++)
                  {
                      elementoNomina.ChildNodes[i].ChildNodes[j].Prefix = "nomina";
                  }

              }
            // le agregamos el elemento nomina al arreglo de elementos
            nominaXMLElement.Add(elementoNomina);
            // creamos el complemento
            if (CFDI.Complemento == null)
            {
                CFDI.Complemento = new MasFacturacion.StampingConnector.StampingService.comprobanteComplemento();
            }
            // vaciamos el arreglo de elementos al nodo de complemento del comprobante
            CFDI.Complemento.Any = nominaXMLElement.ToArray();

            CFDI = EncryptPFX(CFDI,TypeCryptoServiceProvider.SHA1, empresa.PFX, Password);

            var xml = Serializer.SerializeComprobante(CFDI);
            // ya tememos el objeto que vamos a timbrar

            XmlDocument xmld = new XmlDocument();
            xmld.LoadXml(xml);
            xmld.Schemas.Add(null, ConfigurationManager.AppSettings["pathSATFiles"] + @"files SAT/localxsd/cfdv32.xsd");
            xmld.Schemas.Add(null, ConfigurationManager.AppSettings["pathSATFiles"] + @"files SAT/localxsd/nomina11.xsd");
            // validamos el esquema
           xmld.Validate(ValidationCallBack);
            string serialNumber = null;
            TimbreFiscalDigital timbreFiscalTemp = new StampingMasFacturacion().getStamp(CFDI, serialNumber);


           
            XmlDocument docTimbre = new XmlDocument();
            // leemos el complemento de nomina en el objecto de xml
            docTimbre.LoadXml(SerializeTimbreFiscalDigital(timbreFiscalTemp));
            XmlElement elementoTimbre = docTimbre.DocumentElement;
            nominaXMLElement.Add(elementoTimbre);
            CFDI.Complemento.Any = nominaXMLElement.ToArray();

            NominaTimbrada respuesta = new NominaTimbrada();
            respuesta.xml = Serializer.SerializeComprobante(CFDI);
            respuesta.uuid = timbreFiscalTemp.UUID.ToString();

            return respuesta;

        }

        public decimal ShowDecimalRound(decimal Argument, int Digits = 6)
        {
            decimal rounded = decimal.Round(Argument, Digits);

            return rounded;
        }

        private void ValidationCallBack(object sender, ValidationEventArgs e)
        {
            throw new Exception(e.Message);
        }
        public enum TypeCryptoServiceProvider
        {
            MD5,
            SHA1
        };

        public MasFacturacion.StampingConnector.StampingService.comprobante EncryptPFX(MasFacturacion.StampingConnector.StampingService.comprobante cfd, TypeCryptoServiceProvider Algorithm, byte[] pfx, string Password)
        {
           
            string pathXSLT = ConfigurationManager.AppSettings["pathSATFiles"] + @"files SAT/localxslt/cadenaoriginal_3_2.xslt";
            string xmlComprobante = Serializer.SerializeComprobante(cfd);
            if (null == pfx)
            {
                throw new Exception("No existe el certificado de la empresa");
            }
            try
            {
                X509Certificate2 certX509 = default(X509Certificate2);
                RSACryptoServiceProvider rsa = default(RSACryptoServiceProvider);
                SHA1CryptoServiceProvider cspSha1 = default(SHA1CryptoServiceProvider);
                MD5CryptoServiceProvider cspMd5 = default(MD5CryptoServiceProvider);
                NumberFormatInfo nfi = new CultureInfo("en-US", false).NumberFormat;
                byte[] bytesFirmados = default(byte[]);

                nfi.NumberDecimalDigits = 1;


                certX509 = new X509Certificate2(pfx, Password, X509KeyStorageFlags.MachineKeySet);
                string strOriginal = MasFacturacion.StampingConnector.Utilities.Util.generaCadenaOriginal(pathXSLT, xmlComprobante);


                rsa = (RSACryptoServiceProvider)certX509.PrivateKey;

                byte[] data = Encoding.UTF8.GetBytes(strOriginal);

                switch (Algorithm)
                {
                    case TypeCryptoServiceProvider.MD5:
                        cspMd5 = new MD5CryptoServiceProvider();
                        bytesFirmados = rsa.SignData(data, cspMd5);
                        break;
                    case TypeCryptoServiceProvider.SHA1:
                        cspSha1 = new SHA1CryptoServiceProvider();
                        bytesFirmados = rsa.SignData(data, cspSha1);
                        break;
                }

                cfd.sello = Convert.ToBase64String(bytesFirmados);
                cfd.noCertificado = hexString2Ascii(certX509.SerialNumber);
               // cfd.version = certX509.Version.ToString("N", nfi);
                cfd.certificado = Convert.ToBase64String(certX509.GetRawCertData());

               
            }
            catch (Exception)
            {
               
                throw new Exception("No se puede generar el sello");
                
            }

            return cfd;
        }

        public string hexString2Ascii(string hexString)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i <= hexString.Length - 2; i += 2)
            {
                sb.Append(Convert.ToString(Convert.ToChar(Int32.Parse(hexString.Substring(i, 2), System.Globalization.NumberStyles.HexNumber))));
            }
            return sb.ToString();
        }


        public static string SerializeNomina(Nomina NominaComplemento)
        {
            MemoryStream stream = null;
            TextWriter writer = null;
            try
            {
                UTF8Encoding encoding = new UTF8Encoding();




                stream = new MemoryStream(); // read xml in memory

                writer = new StreamWriter(stream, encoding);

                XmlSerializer serializer = new XmlSerializer(typeof(Nomina));
                serializer.Serialize(writer, NominaComplemento); // read object
                int count = (int)stream.Length; // saves object in memory stream
                byte[] arr = new byte[count];
                stream.Seek(0, SeekOrigin.Begin);

                stream.Read(arr, 0, count);

                //return encoding.GetString(arr).Trim();
                string xml = encoding.GetString(arr).Trim();
                xml = Util.removeInvalidCharacters(xml);


                XmlDocument doc = new XmlDocument();
                //XmlSchema sh = XmlSchema.Read(new StreamReader(HttpContext.Current.Request.PhysicalApplicationPath + @"files SAT\cfdv3.xsd"), null);

                doc.LoadXml(xml);

                return doc.OuterXml;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                if (stream != null) stream.Close();
                if (writer != null) writer.Close();
            }
        }


        public static string SerializeTimbreFiscalDigital(TimbreFiscalDigital tfd)
        {
            MemoryStream stream = null;
            TextWriter writer = null;
            try
            {
                UTF8Encoding encoding = new UTF8Encoding();
                XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
                ns.Add("tfd", "http://www.sat.gob.mx/TimbreFiscalDigital");

                stream = new MemoryStream(); // read xml in memory

                writer = new StreamWriter(stream, encoding);

                XmlSerializer serializer = new XmlSerializer(typeof(TimbreFiscalDigital));
                serializer.Serialize(writer, tfd, ns); // read object
                int count = (int)stream.Length; // saves object in memory stream
                byte[] arr = new byte[count];
                stream.Seek(0, SeekOrigin.Begin);

                stream.Read(arr, 0, count);

                //return encoding.GetString(arr).Trim();
                string xml = encoding.GetString(arr).Trim();
                xml = Util.removeInvalidCharacters(xml);

                XmlDocument doc = new XmlDocument();
                //XmlSchema sh = XmlSchema.Read(new StreamReader(HttpContext.Current.Request.PhysicalApplicationPath + @"files SAT\cfdv3.xsd"), null);
                doc.LoadXml(xml);

                XmlAttribute aSchemaLocation = doc.CreateAttribute("xsi", "schemaLocation", "http://www.w3.org/2001/XMLSchema-instance");
                aSchemaLocation.Value = "http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/TimbreFiscalDigital/TimbreFiscalDigital.xsd";
                doc.ChildNodes[1].Attributes.InsertBefore(aSchemaLocation, doc.ChildNodes[1].Attributes[0]);


                return doc.OuterXml;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                if (stream != null) stream.Close();
                if (writer != null) writer.Close();
            }
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
