using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class Configuracion
    {
        [Key]
        public string RFC { get; set; }
        [Display(Name = "Riesgo de trabajo")]
        public double RiesgoTrabajo { get; set; }
        [Display(Name = "Porcentaje Infonavit")]
        public double PorcentajeInfonavit { get; set; }
    }

    public class SalarioMinimoConfiguracion
    {
        [Key]
        public string RFC { get; set; }
        public string Zona { get; set; }
        public double Monto { get; set; }
    }
    public class ISRLimitesConfiguracion
    {
        [Key]
        public string RFC { get; set; }
        public double QuintoLimiteInferior { get; set; }
        public double CantidadQuintoNivel { get; set; }
        public int DiasTarifa { get; set; }
    }
    public class PeriodoConfiguracion
    {
        [Key]
        public string RFC { get; set; }
        public int Periodo { get; set; }

    }
    public class ZonaDefault
    {
        [Key]
        public string RFC { get; set; }
        public string Zona { get; set; }

    }
}