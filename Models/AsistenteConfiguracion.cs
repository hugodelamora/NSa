using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class AsistenteConfiguracion
    {
        [Key]
        public int AsistenteConfiguracionId { get; set; } 
        public Empresa Empresa { get; set; }
        public Configuracion Configuracion { get; set; }
        public Licencia Licencia { get; set; }
    }
}