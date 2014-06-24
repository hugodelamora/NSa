using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class TablaISR1
    {
        [Key]
        public int Id { get; set; }
        [Display(Name = "Límite inferior")]
        public double LimiteInferior { get; set; }
        [Display(Name = "Cuota fija")]
        public double CuotaFija { get; set; }
        [Display(Name = "Porcentaje de tarifa")]
        public double Porcentajetarifa { get; set; }
    }
    public class TablaISR2
    {
        [Key]
        public int Id { get; set; }
        [Display(Name = "Límite inferior")]
        public double LimiteInferior { get; set; }
        [Display(Name = "Subsidio")]
        public double Subsidio { get; set; }

    }
    public class TablaISRSinEstimuloFiscal
    {
        [Key]
        public int Id { get; set; }
        [Display(Name = "Límite inferior")]
        public double LimiteInferior { get; set; }
        [Display(Name = "Subsidio")]
        public double Subsidio { get; set; }

    }
    public class ISRLimites
    {
        [Key]
        public int id { get; set; }
        public double QuintoLimiteInferior { get; set; }
        public double CantidadQuintoNivel { get; set; }
        public int DiasTarifa { get; set; }
    }
}