using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class Licencia
    {
        [Key]
        public int LicenseId { get; set; }
        public string SerialNumber { get; set; }
        public DateTime ExpirationDate { get; set; }
        [ForeignKey("Empresa")]
        public virtual int EmpresaId { get; set; }
        public virtual Empresa Empresa { get; set; }
    }
}