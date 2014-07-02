namespace NominasSAT.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using NominasSAT.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<NominasSAT.Models.ApplicationDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(NominasSAT.Models.ApplicationDbContext context)
        {
            //  This method will be called after migrating to the latest version.
            context.Estadoes.AddOrUpdate(
                new Estado { EstadoID=1,nombre="Jalisco",abreviatura="JAL"}
                );
            // agregamos los regimenes
            context.Regimen.AddOrUpdate(
                new Regimen { Clave = 2, Descripcion = "Sueldos y salarios" },
                new Regimen { Clave = 3, Descripcion = "Jubilados" },
                new Regimen { Clave = 4, Descripcion = "Pensionados" },
                new Regimen { Clave = 5, Descripcion = "Asimilados a salarios, Miembros de las Sociedades Cooperativas de Producción." },
                new Regimen { Clave = 6, Descripcion = "Asimilados a salarios, Integrantes de Sociedades y Asociaciones Civiles" },
                new Regimen { Clave = 7, Descripcion = "Asimilados a salarios, Miembros de consejos directivos, de vigilancia, consultivos, honorarios a administradores, comisarios y gerentes generales." },
                new Regimen { Clave = 8, Descripcion = "Asimilados a salarios, Actividad empresarial (comisionistas)" },
                new Regimen { Clave = 9, Descripcion = "Asimilados a salarios, Honorarios asimilados a salarios" },
                new Regimen { Clave = 10, Descripcion = "Asimilados a salarios, Ingresos acciones o títulos valor" }
                );
            // agregamos los bancos
            context.Bancoes.AddOrUpdate(
               new Banco { Clave = "002", NombreCorto = "BANAMEX", Nombre = "Banco Nacional de México, S.A., Institución de Banca Múltiple, Grupo Financiero Banamex" },
                new Banco { Clave = "006", NombreCorto = "BANCOMEXT", Nombre = "Banco Nacional de Comercio Exterior, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo" },
                new Banco { Clave = "009", NombreCorto = "BANOBRAS", Nombre = "Banco Nacional de Obras y Servicios Públicos, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo" },
                new Banco { Clave = "012", NombreCorto = "BBVA BANCOMER", Nombre = "BBVA Bancomer, S.A., Institución de Banca Múltiple, Grupo Financiero BBVA Bancomer" },
                new Banco { Clave = "014", NombreCorto = "SANTANDER", Nombre = "Banco Santander (México), S.A., Institución de Banca Múltiple, Grupo Financiero Santander" },
                new Banco { Clave = "019", NombreCorto = "BANJERCITO", Nombre = "Banco Nacional del Ejército, Fuerza Aérea y Armada, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo" },
                new Banco { Clave = "021", NombreCorto = "HSBC", Nombre = "HSBC México, S.A., institución De Banca Múltiple, Grupo Financiero HSBC" },
                new Banco { Clave = "030", NombreCorto = "BAJIO", Nombre = "Banco del Bajío, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "032", NombreCorto = "IXE", Nombre = "IXE Banco, S.A., Institución de Banca Múltiple, IXE Grupo Financiero" },
                new Banco { Clave = "036", NombreCorto = "INBURSA", Nombre = "Banco Inbursa, S.A., Institución de Banca Múltiple, Grupo Financiero Inbursa" },
                new Banco { Clave = "037", NombreCorto = "INTERACCIONES", Nombre = "Banco Interacciones, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "042", NombreCorto = "MIFEL", Nombre = "Banca Mifel, S.A., Institución de Banca Múltiple, Grupo Financiero Mifel" },
                new Banco { Clave = "044", NombreCorto = "SCOTIABANK", Nombre = "Scotiabank Inverlat, S.A." },
                new Banco { Clave = "058", NombreCorto = "BANREGIO", Nombre = "Banco Regional de Monterrey, S.A., Institución de Banca Múltiple, Banregio Grupo Financiero" },
                new Banco { Clave = "059", NombreCorto = "INVEX", Nombre = "Banco Invex, S.A., Institución de Banca Múltiple, Invex Grupo Financiero" },
                new Banco { Clave = "060", NombreCorto = "BANSI", Nombre = "Bansi, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "062", NombreCorto = "AFIRME", Nombre = "Banca Afirme, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "072", NombreCorto = "BANORTE", Nombre = "Banco Mercantil del Norte, S.A., Institución de Banca Múltiple, Grupo Financiero Banorte" },
                new Banco { Clave = "102", NombreCorto = "THE ROYAL BANK", Nombre = "The Royal Bank of Scotland México, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "103", NombreCorto = "AMERICAN EXPRESS", Nombre = "American Express Bank (México), S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "106", NombreCorto = "BAMSA", Nombre = "Bank of America México, S.A., Institución de Banca Múltiple, Grupo Financiero Bank of America" },
                new Banco { Clave = "108", NombreCorto = "TOKYO", Nombre = "Bank of Tokyo-Mitsubishi UFJ (México), S.A." },
                new Banco { Clave = "110", NombreCorto = "JP MORGAN", Nombre = "Banco J.P. Morgan, S.A., Institución de Banca Múltiple, J.P. Morgan Grupo Financiero" },
                new Banco { Clave = "112", NombreCorto = "BMONEX", Nombre = "Banco Monex, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "113", NombreCorto = "VE POR MAS", Nombre = "Banco Ve Por Mas, S.A. Institución de Banca Múltiple" },
                new Banco { Clave = "116", NombreCorto = "ING", Nombre = "ING Bank (México), S.A., Institución de Banca Múltiple, ING Grupo Financiero" },
                new Banco { Clave = "124", NombreCorto = "DEUTSCHE", Nombre = "Deutsche Bank México, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "126", NombreCorto = "CREDIT SUISSE", Nombre = "Banco Credit Suisse (México), S.A. Institución de Banca Múltiple, Grupo Financiero Credit Suisse (México)" },
                new Banco { Clave = "127", NombreCorto = "AZTECA", Nombre = "Banco Azteca, S.A. Institución de Banca Múltiple." },
                new Banco { Clave = "128", NombreCorto = "AUTOFIN", Nombre = "Banco Autofin México, S.A. Institución de Banca Múltiple" },
                new Banco { Clave = "129", NombreCorto = "BARCLAYS", Nombre = "Barclays Bank México, S.A., Institución de Banca Múltiple, Grupo Financiero Barclays México" },
                new Banco { Clave = "130", NombreCorto = "COMPARTAMOS", Nombre = "Banco Compartamos, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "131", NombreCorto = "BANCO FAMSA", Nombre = "Banco Ahorro Famsa, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "132", NombreCorto = "BMULTIVA", Nombre = "Banco Multiva, S.A., Institución de Banca Múltiple, Multivalores Grupo Financiero" },
                new Banco { Clave = "133", NombreCorto = "ACTINVER", Nombre = "Banco Actinver, S.A. Institución de Banca Múltiple, Grupo Financiero Actinver" },
                new Banco { Clave = "134", NombreCorto = "WAL-MART", Nombre = "Banco Wal-Mart de México Adelante, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "135", NombreCorto = "NAFIN", Nombre = "Nacional Financiera, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo " },
                new Banco { Clave = "136", NombreCorto = "INTERBANCO", Nombre = "Inter Banco, S.A. Institución de Banca Múltiple" },
                new Banco { Clave = "137", NombreCorto = "BANCOPPEL", Nombre = "BanCoppel, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "138", NombreCorto = "ABC CAPITAL", Nombre = "ABC Capital, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "139", NombreCorto = "UBS BANK", Nombre = "UBS Bank México, S.A., Institución de Banca Múltiple, UBS Grupo Financiero" },
                new Banco { Clave = "140", NombreCorto = "CONSUBANCO", Nombre = "Consubanco, S.A. Institución de Banca Múltiple" },
                new Banco { Clave = "141", NombreCorto = "VOLKSWAGEN", Nombre = "Volkswagen Bank, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "143", NombreCorto = "CIBANCO", Nombre = "CIBanco, S.A." },
                new Banco { Clave = "145", NombreCorto = "BBASE", Nombre = "Banco Base, S.A., Institución de Banca Múltiple" },
                new Banco { Clave = "166", NombreCorto = "BANSEFI", Nombre = "Banco del Ahorro Nacional y Servicios Financieros, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo" },
                new Banco { Clave = "168", NombreCorto = "HIPOTECARIA FEDERAL", Nombre = "Sociedad Hipotecaria Federal, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo" },
                new Banco { Clave = "600", NombreCorto = "MONEXCB", Nombre = "Monex Casa de Bolsa, S.A. de C.V. Monex Grupo Financiero" },
                new Banco { Clave = "601", NombreCorto = "GBM", Nombre = "GBM Grupo Bursátil Mexicano, S.A. de C.V. Casa de Bolsa" },
                new Banco { Clave = "602", NombreCorto = "MASARI", Nombre = "Masari Casa de Bolsa, S.A." },
                new Banco { Clave = "605", NombreCorto = "VALUE", Nombre = "Value, S.A. de C.V. Casa de Bolsa" },
                new Banco { Clave = "606", NombreCorto = "ESTRUCTURADORES", Nombre = "Estructuradores del Mercado de Valores Casa de Bolsa, S.A. de C.V." },
                new Banco { Clave = "607", NombreCorto = "TIBER", Nombre = "Casa de Cambio Tiber, S.A. de C.V." },
                new Banco { Clave = "608", NombreCorto = "VECTOR", Nombre = "Vector Casa de Bolsa, S.A. de C.V." },
                new Banco { Clave = "610", NombreCorto = "B&B", Nombre = "B y B, Casa de Cambio, S.A. de C.V." },
                new Banco { Clave = "614", NombreCorto = "ACCIVAL", Nombre = "Acciones y Valores Banamex, S.A. de C.V., Casa de Bolsa" },
                new Banco { Clave = "615", NombreCorto = "MERRILL", Nombre = "LYNCH Merrill Lynch México, S.A. de C.V. Casa de Bolsa" },
                new Banco { Clave = "616", NombreCorto = "FINAMEX", Nombre = "Casa de Bolsa Finamex, S.A. de C.V." },
                new Banco { Clave = "617", NombreCorto = "VALMEX", Nombre = "Valores Mexicanos Casa de Bolsa, S.A. de C.V." },
                new Banco { Clave = "618", NombreCorto = "UNICA", Nombre = "Unica Casa de Cambio, S.A. de C.V." },
                new Banco { Clave = "619", NombreCorto = "MAPFRE", Nombre = "MAPFRE Tepeyac, S.A." },
                new Banco { Clave = "620", NombreCorto = "PROFUTURO", Nombre = "Profuturo G.N.P., S.A. de C.V., Afore" },
                new Banco { Clave = "621", NombreCorto = "CB", Nombre = "ACTINVER Actinver Casa de Bolsa, S.A. de C.V." },
                new Banco { Clave = "622", NombreCorto = "OACTIN", Nombre = "OPERADORA ACTINVER, S.A. DE C.V." },
                new Banco { Clave = "623", NombreCorto = "SKANDIA", Nombre = "Skandia Vida, S.A. de C.V." },
                new Banco { Clave = "626", NombreCorto = "CBDEUTSCHE", Nombre = "Deutsche Securities, S.A. de C.V. CASA DE BOLSA" },
                new Banco { Clave = "627", NombreCorto = "ZURICH", Nombre = "Zurich Compañía de Seguros, S.A." },
                new Banco { Clave = "628", NombreCorto = "ZURICHVI", Nombre = "Zurich Vida, Compañía de Seguros, S.A." },
                new Banco { Clave = "629", NombreCorto = "SU CASITA", Nombre = "Hipotecaria Su Casita, S.A. de C.V. SOFOM ENR" },
                new Banco { Clave = "630", NombreCorto = "CB INTERCAM", Nombre = "Intercam Casa de Bolsa, S.A. de C.V." },
                new Banco { Clave = "631", NombreCorto = "CI BOLSA", Nombre = "CI Casa de Bolsa, S.A. de C.V." },
                new Banco { Clave = "632", NombreCorto = "BULLTICK CB", Nombre = "Bulltick Casa de Bolsa, S.A., de C.V." },
                new Banco { Clave = "633", NombreCorto = "STERLING", Nombre = "Sterling Casa de Cambio, S.A. de C.V." },
                new Banco { Clave = "634", NombreCorto = "FINCOMUN", Nombre = "Fincomún, Servicios Financieros Comunitarios, S.A. de C.V." },
                new Banco { Clave = "636", NombreCorto = "HDI SEGUROS", Nombre = "HDI Seguros, S.A. de C.V. " },
                new Banco { Clave = "637", NombreCorto = "ORDER", Nombre = "Order Express Casa de Cambio, S.A. de C.V" },
                new Banco { Clave = "638", NombreCorto = "AKALA", Nombre = "Akala, S.A. de C.V., Sociedad Financiera Popular" },
                new Banco { Clave = "640", NombreCorto = "CB JPMORGAN", Nombre = "J.P. Morgan Casa de Bolsa, S.A. de C.V. J.P. Morgan Grupo Financiero" },
                new Banco { Clave = "642", NombreCorto = "REFORMA", Nombre = "Operadora de Recursos Reforma, S.A. de C.V., S.F.P." },
                new Banco { Clave = "646", NombreCorto = "STP", Nombre = "Sistema de Transferencias y Pagos STP, S.A. de C.V.SOFOM ENR" },
                new Banco { Clave = "647", NombreCorto = "TELECOMM", Nombre = "Telecomunicaciones de México" },
                new Banco { Clave = "648", NombreCorto = "EVERCORE", Nombre = "Evercore Casa de Bolsa, S.A. de C.V." },
                new Banco { Clave = "649", NombreCorto = "SKANDIA", Nombre = "Skandia Operadora de Fondos, S.A. de C.V." },
                new Banco { Clave = "651", NombreCorto = "SEGMTY", Nombre = "Seguros Monterrey New York Life, S.A de C.V" },
                new Banco { Clave = "652", NombreCorto = "ASEA", Nombre = "Solución Asea, S.A. de C.V., Sociedad Financiera Popular" },
                new Banco { Clave = "653", NombreCorto = "KUSPIT", Nombre = "Kuspit Casa de Bolsa, S.A. de C.V." },
                new Banco { Clave = "655", NombreCorto = "SOFIEXPRESS", Nombre = "J.P. SOFIEXPRESS, S.A. de C.V., S.F.P." },
                new Banco { Clave = "656", NombreCorto = "UNAGRA", Nombre = "UNAGRA, S.A. de C.V., S.F.P." },
                new Banco { Clave = "659", NombreCorto = "OPCIONES EMPRESARIALES DEL NOROESTE", Nombre = "OPCIONES EMPRESARIALES DEL NORESTE, S.A. DE C.V., S.F.P." },
                new Banco { Clave = "901", NombreCorto = "CLS", Nombre = "Cls Bank International" },
                new Banco { Clave = "902", NombreCorto = "INDEVAL", Nombre = "SD. Indeval, S.A. de C.V." },
                new Banco { Clave = "670", NombreCorto = "LIBERTAD", Nombre = "Libertad Servicios Financieros, S.A. De C.V." }
                );

            // catalogo riesgo puesto

            context.RiesgoPuestoes.AddOrUpdate(
                new RiesgoPuesto { Clave = 1, Descripcion = "Clase I" },
                new RiesgoPuesto { Clave = 2, Descripcion = "Clase II" },
                new RiesgoPuesto { Clave = 3, Descripcion = "Clase III" },
                new RiesgoPuesto { Clave = 4, Descripcion = "Clase IV" },
                new RiesgoPuesto { Clave = 5, Descripcion = "Clase V" }
                );
            // catalogo de percepciones
            context.TipoPercepcions.AddOrUpdate(
                new TipoPercepcion { Clave = "001", Descripcion = "Sueldos" },
                new TipoPercepcion { Clave = "002", Descripcion = "Gratificación Anual (Aguinaldo) " },
                new TipoPercepcion { Clave = "003", Descripcion = "Participación de los Trabajadores en las Utilidades PTU " },
                new TipoPercepcion { Clave = "004", Descripcion = "Reembolso de Gastos Médicos Dentales y Hospitalarios " },
                new TipoPercepcion { Clave = "005", Descripcion = "Fondo de Ahorro " },
                new TipoPercepcion { Clave = "006", Descripcion = "Caja de ahorro " },
                new TipoPercepcion { Clave = "009", Descripcion = "Contribuciones a Cargo del Trabajador Pagadas por el Patrón " },
                new TipoPercepcion { Clave = "010", Descripcion = "Premios por puntualidad " },
                new TipoPercepcion { Clave = "011", Descripcion = "Prima de Seguro de vida " },
                new TipoPercepcion { Clave = "012", Descripcion = "Seguro de Gastos Médicos Mayores " },
                new TipoPercepcion { Clave = "013", Descripcion = "Cuotas Sindicales Pagadas por el Patrón " },
                new TipoPercepcion { Clave = "014", Descripcion = "Subsidios por incapacidad " },
                new TipoPercepcion { Clave = "015", Descripcion = "Becas para trabajadores y/o hijos " },
                new TipoPercepcion { Clave = "016", Descripcion = "Otros " },
                new TipoPercepcion { Clave = "017", Descripcion = "Subsidio para el empleo " },
                new TipoPercepcion { Clave = "019", Descripcion = "Horas extra " },
                new TipoPercepcion { Clave = "020", Descripcion = "Prima dominical " },
                new TipoPercepcion { Clave = "021", Descripcion = "Prima vacacional " },
                new TipoPercepcion { Clave = "022", Descripcion = "Prima por antigüedad " },
                new TipoPercepcion { Clave = "023", Descripcion = "Pagos por separación " },
                new TipoPercepcion { Clave = "024", Descripcion = "Seguro de retiro " },
                new TipoPercepcion { Clave = "025", Descripcion = "Indemnizaciones " },
                new TipoPercepcion { Clave = "026", Descripcion = "Reembolso por funeral " },
                new TipoPercepcion { Clave = "027", Descripcion = "Cuotas de seguridad social pagadas por el patrón " },
                new TipoPercepcion { Clave = "028", Descripcion = "Comisiones " },
                new TipoPercepcion { Clave = "029", Descripcion = "Vales de despensa " },
                new TipoPercepcion { Clave = "030", Descripcion = "Vales de restaurante " },
                new TipoPercepcion { Clave = "031", Descripcion = "Vales de gasolina " },
                new TipoPercepcion { Clave = "032", Descripcion = "Vales de ropa " },
                new TipoPercepcion { Clave = "033", Descripcion = "Ayuda para renta " },
                new TipoPercepcion { Clave = "034", Descripcion = "Ayuda para artículos escolares " },
                new TipoPercepcion { Clave = "035", Descripcion = "Ayuda para anteojos " },
                new TipoPercepcion { Clave = "036", Descripcion = "Ayuda para transporte " },
                new TipoPercepcion { Clave = "037", Descripcion = "Ayuda para gastos de funeral " },
                new TipoPercepcion { Clave = "038", Descripcion = "Otros ingresos por salarios " },
                new TipoPercepcion { Clave = "039", Descripcion = "Jubilaciones" }
                );

            // catalogo de deducciones

            context.TipoDeduccions.AddOrUpdate(
                new TipoDeduccion { Clave = "001", Descripcion = "Seguridad social ", Comentario = "" },
                new TipoDeduccion { Clave = "002", Descripcion = "ISR ", Comentario = "" },
                new TipoDeduccion { Clave = "003", Descripcion = "Aportaciones a retiro, cesantía en edad avanzada y vejez. ", Comentario = "" },
                new TipoDeduccion { Clave = "004", Descripcion = "Otros ", Comentario = "" },
                new TipoDeduccion { Clave = "005", Descripcion = "Aportaciones a Fondo de vivienda ", Comentario = "" },
                new TipoDeduccion { Clave = "006", Descripcion = "Descuento por incapacidad", Comentario = "Sumatoria de los valores de los atributos Descuento del nodo Incapacidad " },
                new TipoDeduccion { Clave = "007", Descripcion = "Pensión alimenticia ", Comentario = "" },
                new TipoDeduccion { Clave = "008", Descripcion = "Renta ", Comentario = "" },
                new TipoDeduccion { Clave = "009", Descripcion = "Préstamos provenientes del Fondo Nacional de la Vivienda para los Trabajadores ", Comentario = "" },
                new TipoDeduccion { Clave = "010", Descripcion = "Pago por crédito de vivienda ", Comentario = "" },
                new TipoDeduccion { Clave = "011", Descripcion = "Pago de abonos INFONACOT ", Comentario = "" },
                new TipoDeduccion { Clave = "012", Descripcion = "Anticipo de salarios ", Comentario = "" },
                new TipoDeduccion { Clave = "013", Descripcion = "Pagos hechos con exceso al trabajador ", Comentario = "" },
                new TipoDeduccion { Clave = "014", Descripcion = "Errores ", Comentario = "" },
                new TipoDeduccion { Clave = "015", Descripcion = "Pérdidas ", Comentario = "" },
                new TipoDeduccion { Clave = "016", Descripcion = "Averías ", Comentario = "" },
                new TipoDeduccion { Clave = "017", Descripcion = "Adquisición de artículos producidos por la empresa o establecimiento ", Comentario = "" },
                new TipoDeduccion { Clave = "018", Descripcion = "Cuotas para la constitución y fomento de sociedades cooperativas y de cajas de ahorro  ", Comentario = "" },
                new TipoDeduccion { Clave = "019", Descripcion = "Cuotas sindicales ", Comentario = "" },
                new TipoDeduccion { Clave = "020", Descripcion = "Ausencia (Ausentismo) ", Comentario = "" },
                new TipoDeduccion { Clave = "021", Descripcion = "Cuotas obrero patronales ", Comentario = "" }

                );

            context.TipoIncapacidads.AddOrUpdate(
                new TipoIncapacidad { Clave = 1, Descripcion = "Riesgo de trabajo" },
                new TipoIncapacidad { Clave = 2, Descripcion = "Enfermedad en general" },
                new TipoIncapacidad { Clave = 3, Descripcion = "Maternidad" }
                );


            // Impuestos IMSS Predeterminados

            context.TablaPs.AddOrUpdate(
                new TablaP { id = 1, Periodo = 2014, TablaP1 = 1.050, TablaP2 = 20.400, TablaP3 = 1.100, TablaP4 = 0.700, TablaP5 = 1.750, TablaP6 = 3.150, TablaP7 = 1.000, TablaP8 = 2.000, TablaP9 = 0.000000, TablaP10 = 5.000 },
                new TablaP { id = 2, Periodo = 2015, TablaP1 = 2.800, TablaP2 = 10.000, TablaP3 = 1.100, TablaP4 = 1.800, TablaP5 = 1.750, TablaP6 = 3.150, TablaP7 = 1.000, TablaP8 = 2.000, TablaP9 = 0.000000, TablaP10 = 5.000 }
                );

            context.TablaTs.AddOrUpdate(
                new TablaT { id = 1, Periodo = 2014, TablaT1 = 0.375, TablaT2 = 0.000, TablaT3 = 0.400, TablaT4 = 0.250, TablaT5 = 0.625, TablaT6 = 1.125 },
                new TablaT { id = 2, Periodo = 2015, TablaT1 = 0.375, TablaT2 = 0.000, TablaT3 = 0.400, TablaT4 = 0.250, TablaT5 = 0.625, TablaT6 = 1.125 }
                );

            context.TablaTTs.AddOrUpdate(
               new TablaTT { id = 1, Periodo = 2014, TablaTT1 = 0.000, TablaTT2 = 20.400, TablaTT3 = 1.500, TablaTT4 = 0.000, TablaTT5 = 0.000, TablaTT6 = 0.000 }
               );

            context.TopesdeVecesdeSalarioXRamoes.AddOrUpdate(
                    new TopesdeVecesdeSalarioXRamo { id = 1, Periodo = 2014, Tope1 = 25, Tope2 = 1, Tope3 = 25, Tope4 = 25, Tope5 = 25, Tope6 = 25, Tope7 = 25, Tope8 = 25, Tope9 = 25, Tope10 = 25 }

                );
            context.TablaISR1.AddOrUpdate(
                new TablaISR1 { Id=1,LimiteInferior=0,CuotaFija=0,Porcentajetarifa=1.92 },
                new TablaISR1 { Id = 2, LimiteInferior = 496.08, CuotaFija = 9.52, Porcentajetarifa = 6.4 },
                new TablaISR1 { Id = 3, LimiteInferior = 4210.42, CuotaFija = 247.24, Porcentajetarifa = 10.88 },
                new TablaISR1 { Id = 4, LimiteInferior = 7399.425, CuotaFija = 594.21, Porcentajetarifa = 16 },
                new TablaISR1 { Id = 5, LimiteInferior = 8601.505, CuotaFija = 786.54, Porcentajetarifa = 17.92 },
                new TablaISR1 { Id = 6, LimiteInferior = 10298.355, CuotaFija = 1090.61, Porcentajetarifa = 21.36 },
                new TablaISR1 { Id = 7, LimiteInferior = 20770.295, CuotaFija = 3327.42, Porcentajetarifa = 23.52 },
                new TablaISR1 { Id = 8, LimiteInferior = 32736.835, CuotaFija = 6141.95, Porcentajetarifa = 30 },
                new TablaISR1 { Id = 9, LimiteInferior = 62501.01, CuotaFija = 15070.9, Porcentajetarifa = 32 },
                new TablaISR1 { Id = 10, LimiteInferior = 83333.34, CuotaFija = 21737.57, Porcentajetarifa = 34 },
                new TablaISR1 { Id = 11, LimiteInferior = 250000.01, CuotaFija = 78404.23, Porcentajetarifa = 35 }
                );
            context.TablaISR2.AddOrUpdate(
               new TablaISR2 { Id = 1, LimiteInferior = 0, Subsidio = 407.02 },
               new TablaISR2 { Id = 2, LimiteInferior = 1768.97, Subsidio = 406.83 },
               new TablaISR2 { Id = 3, LimiteInferior = 2653.39, Subsidio = 406.62 },
               new TablaISR2 { Id = 4, LimiteInferior = 3472.85, Subsidio = 392.77 },
               new TablaISR2 { Id = 5, LimiteInferior = 3537.88, Subsidio = 382.46 },
               new TablaISR2 { Id = 6, LimiteInferior = 4446.16, Subsidio = 354.23 },
               new TablaISR2 { Id = 7, LimiteInferior = 4717.19, Subsidio = 324.87 },
               new TablaISR2 { Id = 8, LimiteInferior = 5335.43, Subsidio = 294.63 },
               new TablaISR2 { Id = 9, LimiteInferior = 6224.68, Subsidio = 253.54 },
               new TablaISR2 { Id = 10, LimiteInferior = 7113.91, Subsidio = 217.61 },
               new TablaISR2 { Id = 11, LimiteInferior = 7382.34, Subsidio = 0 }
               );
            context.TablaISRSinEstimuloFiscals.AddOrUpdate(
              new TablaISRSinEstimuloFiscal { Id = 1, LimiteInferior = 0, Subsidio = 407.02 },
              new TablaISRSinEstimuloFiscal { Id = 2, LimiteInferior = 1768.97, Subsidio = 406.83 },
              new TablaISRSinEstimuloFiscal { Id = 3, LimiteInferior = 1978.71, Subsidio = 359.84 },
              new TablaISRSinEstimuloFiscal { Id = 4, LimiteInferior = 2653.39, Subsidio = 343.6 },
              new TablaISRSinEstimuloFiscal { Id = 5, LimiteInferior = 3472.85, Subsidio = 310.29 },
              new TablaISRSinEstimuloFiscal { Id = 6, LimiteInferior = 3537.88, Subsidio = 298.44 },
              new TablaISRSinEstimuloFiscal { Id = 7, LimiteInferior = 4446.16, Subsidio = 354.23 },
              new TablaISRSinEstimuloFiscal { Id = 8, LimiteInferior = 4717.19, Subsidio = 324.87 },
              new TablaISRSinEstimuloFiscal { Id = 9, LimiteInferior = 5335.43, Subsidio = 294.63 },
              new TablaISRSinEstimuloFiscal { Id = 10, LimiteInferior = 6224.68, Subsidio = 253.54 },
              new TablaISRSinEstimuloFiscal { Id = 11, LimiteInferior = 7113.91, Subsidio = 217.61 },
              new TablaISRSinEstimuloFiscal { Id = 12, LimiteInferior = 7382.34, Subsidio = 0 }
              );

            context.ISRLimites.AddOrUpdate(
               new ISRLimites { id=1,QuintoLimiteInferior= 8601.51,CantidadQuintoNivel=3537.88,DiasTarifa=7 }
                );

            // salarios minimos

            context.SalarioMinimoes.AddOrUpdate(
                new SalarioMinimo { Zona = "SMDF", Monto = 67.29 },
                new SalarioMinimo { Zona = "SMZG", Monto = 63.77 }
                );

            context.Periodoes.AddOrUpdate(
                new Periodo { PeriodoID = 1, PeriodoP=2014, Predeterminado = true },
                new Periodo { PeriodoID = 2, PeriodoP=2015, Predeterminado = false }
                );

            context.TipoPeriodoes.AddOrUpdate(
                new TipoPeriodo { PeriodoId = 1, Nombre = "Semanal", DiasMin = 7, DiasMax = 7, Indice = 1 },
                new TipoPeriodo { PeriodoId = 2, Nombre = "Quincenal", DiasMin = 14, DiasMax = 16, Indice = 2 },
                new TipoPeriodo { PeriodoId = 3, Nombre = "Catorcenal", DiasMin = 14, DiasMax = 14, Indice = 3 },
                new TipoPeriodo { PeriodoId = 4, Nombre = "Mensual", DiasMin = 30, DiasMax = 30, Indice = 4 },
                new TipoPeriodo { PeriodoId = 5, Nombre = "Extraordinario", DiasMin = 0, DiasMax = 0, Indice = 5 }
                );

            context.FormadePagoes.AddOrUpdate(
                new FormadePago { PagoId=1, Nombre="Efectivo",Indice=1},
                new FormadePago { PagoId=1, Nombre="Tarjeta",Indice=2},
                new FormadePago { PagoId=1, Nombre="Cheque",Indice=3}
                );
        }
    }
}
