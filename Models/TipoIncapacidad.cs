using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class TipoIncapacidad
    {
        [Key]
        public int Clave { get; set; }
        [Display(Name = "Descripción")]
        public string Descripcion { get; set; }
    }
}