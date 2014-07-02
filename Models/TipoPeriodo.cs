using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class TipoPeriodo
    {
        [Key]
        public int PeriodoId { get; set; }
        public string Nombre { get; set; }
        public int DiasMin { get; set; }
        public int DiasMax { get; set; }
        public int Indice { get; set; }
    }
}