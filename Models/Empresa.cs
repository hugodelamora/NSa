using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NominasSAT.Models
{
    public class Empresa
    {
        [Key]
        public int EmpresaId { get; set; }
        [Display(Name = "Nombre o razón social")]
        public string Nombre { get; set; }
        public string RFC { get; set; }
        [Display(Name = "Regimen fiscal")]
        public string Regimen { get; set; }
        [Display(Name = "Registro patronal")]
        public string RegistroPatronal { get; set; }
        [Display(Name = "Clase de riesgo de trabajo")]
        public string ClaseRiesgoTrabajo { get; set; }
        [Display(Name = "Lugar de expedición")]
        public string LugarExpedicion { get; set; }

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
        
        
       
        
        
        // Datos del usuario
        [JsonIgnore]
        public virtual ApplicationUser User { get; set; }

        // Certificados de Sello Digital (CSD) of Firma electronica Avanzada (FIEL)
        [Display(Name = "Archivo del certificado *.cer")]
        public string CertificadoCer { get; set; }
        [Display(Name = "Archivo de la llave privada *.key")]
        public string CertificadoKey { get; set; }
        [Display(Name = "Contraseña")]
        public string CertificadoContasena { get; set; }

        public byte[] PFX { get; set; }
    }
}