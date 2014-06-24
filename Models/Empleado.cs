using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class Empleado
    {
        [Key]
        public int Codigo { get; set; }
        [Required]
        public string Nombre { get; set; }
        [Required]
        public string RFC { get; set; }
        [Required]
        public string CURP { get; set; }
        [Required]
        [Display(Name = "Número de seguridad social")]
        public string NumSeguroSocial { get; set; }
        [Display(Name = "Salario diario")]
        public decimal SalarioDiario { get; set; }
        public decimal SBC { get; set; }
        [Display(Name = "Fecha de inicio laboral")]
        public DateTime FechaInicioLaboral { get; set; }
        [Display(Name = "Numero de empleado")]
        public string NumdeEmpleado { get; set; }
        [Display(Name = "Regimén")]
        public int? Regimen { get; set; }
         [Display(Name = "Departamento")]
        public string Departamento { get; set; }
         [Display(Name = "CLABE")]
         public string CLABE { get; set; }
         [Display(Name = "Banco")]
         public int? Banco { get; set; }
         [Display(Name = "Puesto")]
         public string Puesto { get; set; }
        [Required]
         [Display(Name = "Tipo de contrato")]
         public string TipoContrato { get; set; }
         [Display(Name = "Tipo de jornada")]
         public string TipoJornada { get; set; }
         [Display(Name = "Periodicidad de pago")]
         public string PeriodicidadPago { get; set; }
         [Display(Name = "Riesgo de puesto")]
         public int? RiesgoPuesto { get; set; }

        // Datos del usuario
        public int Empresa { get; set; }
        public string RFCPatron { get; set; }

        // domicilio fiscal
        [Display(Name = "Pais")]
        public string Pais { get; set; }
        [Display(Name = "Estado")]
        public string Estado { get; set; }
        [Display(Name = "Localidad")]
        public string Localidad { get; set; }
        [Display(Name = "Municipio")]
        public string Municipio { get; set; }
        [Display(Name = "Calle")]
        public string Calle { get; set; }
        [Display(Name = "Número exterior")]
        public string NumeroExterior { get; set; }
        [Display(Name = "Número interior")]
        public string NumeroInterior { get; set; }
        [Display(Name = "Colonia")]
        public string Colonia { get; set; }
        [Display(Name = "Código postal")]
        public string CP { get; set; }
        [Display(Name = "Correo eléctornico")]
        [DataType(DataType.EmailAddress)]
        [RegularExpression(@"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}", ErrorMessage = "Email incorrecto")]
        public string Email { get; set; }

    }
}