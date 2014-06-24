using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class Estado
    {
        [Key]
        public int EstadoID { get; set; }
        [Display(Name = "Estado")]
        public string nombre { get; set; }
        public string abreviatura { get; set; }
    }
}