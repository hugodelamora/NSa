using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class TipoPercepcion
    {
        [Key]
        public string Clave { get; set; }
        [Display(Name = "Descripción")]
        public string Descripcion { get; set; }
    }
}