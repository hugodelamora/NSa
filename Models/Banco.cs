using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class Banco
    {
        [Key]
        public string Clave { get; set; }
        [Display(Name = "Nombre corto")]
        public string NombreCorto { get; set; }
        [Display(Name = "Nombre o Razón Social")]
        public string Nombre { get; set; }
    }
}