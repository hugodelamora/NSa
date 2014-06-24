using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
   
    // tabla de topes de salario minimo

    public class SalarioMinimo
    {
        [Key]
        public string Zona { get; set; }
        public double Monto { get; set; }
    }


  
    
    public class RiesgosPredeterminados
    {
        [Key]
        public int RiesgosID { get; set; }
        [Display(Name = "Riesgo de trabajo")]
        public double RiesgoTrabajo { get; set; }
        [Display(Name = "Porcentaje Infonavit")]
        public double PorcentajeInfonavit { get; set; }
    }


    public class TopesdeVecesdeSalarioXRamo
    {
        [Key]
        public int id { get; set; }
        public int Periodo { get; set; }
        [Display(Name = "1")]
        public double Tope1 { get; set; }
        [Display(Name = "2")]
        public double Tope2 { get; set; }
        [Display(Name = "3")]
        public double Tope3 { get; set; }
        [Display(Name = "4")]
        public double Tope4 { get; set; }
        [Display(Name = "5")]
        public double Tope5 { get; set; }
        [Display(Name = "6")]
        public double Tope6 { get; set; }
        [Display(Name = "7")]
        public double Tope7 { get; set; }
        [Display(Name = "8")]
        public double Tope8 { get; set; }
        [Display(Name = "9")]
        public double Tope9 { get; set; }
        [Display(Name = "10")]
        public double Tope10 { get; set; }
    }


    public class TablaP
    {
        [Key]
        public int id { get; set; }
        public int Periodo { get; set; }
        [Display(Name = "Gastos med")]
        public double TablaP1 { get; set; }
        [Display(Name = "Fija")]
        public double TablaP2 { get; set; }
        [Display(Name = "Mas 3SM")]
        public double TablaP3 { get; set; }
        [Display(Name = "Dinero")]
        public double TablaP4 { get; set; }
        [Display(Name = "Invalidez Vid")]
        public double TablaP5 { get; set; }
        [Display(Name = "Cesantia y V")]
        public double TablaP6 { get; set; }
        [Display(Name = "Guarderia")]
        public double TablaP7 { get; set; }
        [Display(Name = "Retiro")]
        public double TablaP8 { get; set; }
        [Display(Name = "9")]
        public double TablaP9 { get; set; }
        [Display(Name = "Infonavit")]
        public double TablaP10 { get; set; }
    }

    public class TablaT
    {
        [Key]
        public int id { get; set; }
        public int Periodo { get; set; }
        [Display(Name = "Gastos med")]
        public double TablaT1 { get; set; }
        [Display(Name = "Fija")]
        public double TablaT2 { get; set; }
        [Display(Name = "Mas 3SM")]
        public double TablaT3 { get; set; }
        [Display(Name = "Dinero")]
        public double TablaT4 { get; set; }
        [Display(Name = "Invalidez Vid")]
        public double TablaT5 { get; set; }
        [Display(Name = "Cesantia y V")]
        public double TablaT6 { get; set; }

    }

    public class TablaTT
    {
        [Key]
        public int id { get; set; }
        public int Periodo { get; set; }
        [Display(Name = "1")]
        public double TablaTT1 { get; set; }
        [Display(Name = "2")]
        public double TablaTT2 { get; set; }
        [Display(Name = "3")]
        public double TablaTT3 { get; set; }
        [Display(Name = "4")]
        public double TablaTT4 { get; set; }
        [Display(Name = "5")]
        public double TablaTT5 { get; set; }
        [Display(Name = "6")]
        public double TablaTT6 { get; set; }

    }
    public class Periodo
    {
        [Key]
        public int PeriodoID { get; set; }
        public int PeriodoP { get; set; }
        public bool Predeterminado { get; set; }
    }

}