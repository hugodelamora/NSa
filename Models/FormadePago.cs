using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class FormadePago
    {
        [Key]
        public int PagoId { get; set; }
        public string Nombre { get; set; }
        public int Indice { get; set; }
    }
}