using System.ComponentModel.DataAnnotations;

namespace NominasSAT.Models
{
    public class ExternalLoginConfirmationViewModel
    {
        [Required]
        [Display(Name = "Nombre de usuario")]
        public string UserName { get; set; }
        [Required]
        public string Email { get; set; }
        public string Apellidos { get; set; }
        public string Nombres { get; set; }
        [Display(Name = "Nombre o razón social")]
        public string NombreRazonSocial { get; set; }
        [Required]
        public string RFC { get; set; }
        [Display(Name = "Regimen fiscal")]
        public string Regimen { get; set; }
        [Display(Name = "Registro patronal")]
        public string RegistroPatronal { get; set; }
        [Display(Name = "Clase de riesgo de trabajo")]
        public string ClaseRiesgoTrabajo { get; set; }
        [Display(Name = "Lugar de expedición")]
        public string LugarExpedicion { get; set; }

        // domicilio
        [Display(Name = "Calle")]
        public string Calle { get; set; }
        [Display(Name = "Número exterior")]
        public string NumeroExterior { get; set; }
        [Display(Name = "Número interior")]
        public string NumeroInterior { get; set; }
        [Display(Name = "Colonia")]
        public string Colonia { get; set; }
        [Display(Name = "Código postal")]
        public int CP { get; set; }
        [Display(Name = "Ciudad")]
        public string Ciudad { get; set; }
        [Display(Name = "Municipio")]
        public string Municipio { get; set; }
        [Display(Name = "Estado")]
        public string Estado { get; set; }

        // Certificados de Sello Digital (CSD) of Firma electronica Avanzada (FIEL)
        [Display(Name = "Archivo del certificado *.cer")]
        public string CertificadoCer { get; set; }
        [Display(Name = "Archivo de la llave privada *.key")]
        public string CertificadoKey { get; set; }
        [Display(Name = "Contraseña")]
        public string CertificadoContasena { get; set; }


    }

    public class ManageUserViewModel
    {
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Contraseña actual")]
        public string OldPassword { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "El número de caracteres de {0} debe ser al menos {2}.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Nueva contraseña")]
        public string NewPassword { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirmar la nueva contraseña")]
        [Compare("NewPassword", ErrorMessage = "La nueva contraseña y la contraseña de confirmación no coinciden.")]
        public string ConfirmPassword { get; set; }
    }

    public class LoginViewModel
    {
        [Required]
        [Display(Name = "Nombre de usuario")]
        public string UserName { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Contraseña de acceso")]
        public string Password { get; set; }

        [Display(Name = "¿Recordar cuenta?")]
        public bool RememberMe { get; set; }
    }

    public class RegisterViewModel
    {
        [Required]
        [Display(Name = "Nombre de usuario")]
        public string UserName { get; set; }

        [Required]
        [Display(Name = "Nombres")]
        public string Nombres { get; set; }

        [Required]
        [Display(Name = "Apellidos")]
        public string Apellidos { get; set; }

        [Required]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [Display(Name = "Nombre o Razón Social")]
        public string NombreRazonSocial { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "El número de caracteres de {0} debe ser al menos {2}.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Contraseña")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirmar contraseña")]
        [Compare("Password", ErrorMessage = "La contraseña y la contraseña de confirmación no coinciden.")]
        public string ConfirmPassword { get; set; }

        [Required]
        [Display(Name = "RFC")]
        public string RFC { get; set; }

        [Required]
        [Display(Name = "Regimen laboral")]
        public string Regimen { get; set; }

        [Required]
        [Display(Name = "Registro patronal")]
        public string RegistroPatronal { get; set; }

        [Required]
        [Display(Name = "Clase de riesgo de trabajo")]
        public string ClaseRiesgoTrabajo { get; set; }

        [Required]
        [Display(Name = "Lugar de Expedición")]
        public string LugarExpedicion { get; set; }

        // domicilio
        [Required]
        [Display(Name = "Calle")]
        public string Calle { get; set; }
        [Required]
        [Display(Name = "Numero exterior")]
        public string NumeroExterior { get; set; }
        [Required]
        [Display(Name = "Numero interior")]
        public string NumeroInterior { get; set; }
        [Required]
        [Display(Name = "Colonia")]
        public string Colonia { get; set; }
        [Required]
        [DataType(DataType.PostalCode)]
        [Display(Name = "Código Postal")]
        public string CP { get; set; }
        [Required]
        [Display(Name = "Ciudad")]
        public string Ciudad { get; set; }
        [Required]
        [Display(Name = "Municipio")]
        public string Municipio { get; set; }
        [Required]
        [Display(Name = "Estado")]
        public string Estado { get; set; }


        // Certificados de Sello Digital (CSD) of Firma electronica Avanzada (FIEL)

        [DataType(DataType.Upload)]
        [Display(Name = "Certificado de sello digital .cer")]
        public string CertificadoCer { get; set; }

        [DataType(DataType.Upload)]
        [Display(Name = "Llave de sello digital .key")]
        public string CertificadoKey { get; set; }
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Contraseña sello digital")]
        public string CertificadoContasena { get; set; }


    }
}
