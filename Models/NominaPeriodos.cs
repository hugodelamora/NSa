using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class NominaPeriodos
    {
        public enum StatusPeriodo
        {
            sinTimbrar,
            timbrado
        }

        [Key]
        public int NominaPeriodoId { get; set; }
        public int NumeroPeriodo { get; set; }
        public string RFCPatron { get; set; }
        public int Empresa { get; set; }
        public string Nombre { get; set; }
        public string FechaInicioPeriodo { get; set; }
        public string FechaFinPeriodo { get; set; }
        public int TipoPeriodo { get; set; }
        public string FechaDePago { get; set; }
        public int FormaDePago { get; set; }
        public StatusPeriodo Status { get; set; }

    }
}