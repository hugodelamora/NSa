using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class NominaCFDI
    {
        [Key]
        public int NominaID { get; set; }
        // Datos del usuario
        public int User { get; set; }
        public int Empresa { get; set; }
        [Display(Name = "Salario diario")]
        public string SalarioDiario { get; set; }
        public string SBC { get; set; }
        [Display(Name = "Dias a pagar")]
        public int DiasPagar { get; set; }
        [Display(Name = "Incidencias")]
        public int Incidencias { get; set; }
        [Display(Name = "Ausentismo")]
        public int Ausentismo { get; set; }
        [Display(Name = "Dias Trabajados")]
        public int DiasTrabajados { get; set; }
        [Display(Name = "Horas extras dobles")]
        public int HorasExtrasDobles { get; set; }
        [Display(Name = "Horas extras triples")]
        public int HorasExtrasTriples { get; set; }
        // PERCEPCIONES
        [Display(Name = "001-Sueldos, Salarios, Rayas y Jornales")]
        public decimal PSueldosSalariosRayasJornales { get; set; }
        [Display(Name = "Sueldo excento")]
        public decimal PSueldoExcento { get; set; }
        [Display(Name = "Sueldo gravado")]
        public decimal PSueldoGravado { get; set; }
        [Display(Name = "Horas extras dobles")]
        public decimal PHorasExtrasDobles { get; set; }
        [Display(Name = "Horas extras triples")]
        public decimal PHorasExtrasTriples { get; set; }
        [Display(Name = "019 Horas extras")]
        public decimal PHorasExtras { get; set; }
        [Display(Name = "Horas extras exento")]
        public decimal PHorasExtrasExcento { get; set; }
        [Display(Name = "Horas extras gravado")]
        public decimal PHorasExtrasGravado { get; set; }
        [Display(Name = "Comisiones")]
        public decimal PComisiones { get; set; }
        [Display(Name = "016 Otros")]
        public decimal POtros { get; set; }
        [Display(Name = "Prima vacacional")]
        public decimal PPrimavacacional { get; set; }
        [Display(Name = "Total Percepciones")]
        public decimal PTotalPercepciones { get; set; }
        // DEDUCCIONES
        [Display(Name = "002 ISR")]
        public decimal DISR { get; set; }
        [Display(Name = "017 Subsidio")]
        public decimal DSubsidio { get; set; }
        [Display(Name = "1")]
        public decimal D1 { get; set; }
        [Display(Name = "2")]
        public decimal D2 { get; set; }
        [Display(Name = "3")]
        public decimal D3 { get; set; }
        [Display(Name = "4")]
        public decimal D4 { get; set; }
        [Display(Name = "5")]
        public decimal D5 { get; set; }
        [Display(Name = "6")]
        public decimal D6 { get; set; }
        [Display(Name = "001 Seguridad Social")]
        public decimal SeguridadSocial { get; set; }
        [Display(Name = "005 Infonavit")]
        public decimal Infonavit { get; set; }
        [Display(Name = "004 Otras deducciones")]
        public decimal OtrasDeducciones { get; set; }
        [Display(Name = "Total de deducciones")]
        public decimal TotalDeduccion { get; set; }
        [Display(Name = "Salario Neto")]
        public decimal SalarioNeto { get; set; }
        // datos de incapacidad
        [Display(Name = "Tipo de incapacidad")]
        public string TipoIncapacidad { get; set; }
        [Display(Name = "Descuento")]
        public int DescuentoIncapacidad { get; set; }
        // datos empleado
        public string RFC { get; set; }
        public string CURP { get; set; }
        [Display(Name = "Número de seguridad social")]
        public string NumSeguroSocial { get; set; }
        [Display(Name = "Fecha de inicio laboral")]
        public string FechaInicioLaboral { get; set; }

        [Display(Name = "XML")]
        public string XML { get; set; }
    }
}