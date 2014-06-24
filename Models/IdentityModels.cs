using Microsoft.AspNet.Identity.EntityFramework;

namespace NominasSAT.Models
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        
        
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Email { get; set; }
        public string NombreRazonSocial { get; set; }
        public string RFC { get; set; }
        public string Regimen { get; set; }
        public string RegistroPatronal { get; set; }
        public string ClaseRiesgoTrabajo { get; set; }
        public string LugarExpedicion { get; set; }

        // domicilio
        public string Calle { get; set; }
        public string NumeroExterior { get; set; }
        public string NumeroInterior { get; set; }
        public string Colonia { get; set; }
        public string CP { get; set; }
        public string Ciudad { get; set; }
        public string Municipio { get; set; }
        public string Estado { get; set; }


        // Certificados de Sello Digital (CSD) of Firma electronica Avanzada (FIEL)
        public string CertificadoCer { get; set; }
        public string CertificadoKey { get; set; }
        public string CertificadoContasena { get; set; }
        public byte[] PFX { get; set; }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection")
        {
        }

        public System.Data.Entity.DbSet<NominasSAT.Models.TipoDeduccion> TipoDeduccions { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TipoIncapacidad> TipoIncapacidads { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TipoPercepcion> TipoPercepcions { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.RiesgoPuesto> RiesgoPuestoes { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.Regimen> Regimen { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.Empresa> Empresas { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.Empleado> Empleadoes { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.Banco> Bancoes { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.Estado> Estadoes { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.NominaCFDI> Nominas { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.Configuracion> Configuracions { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.SalarioMinimoConfiguracion> SalarioMinimoConfiguracions { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TablaISR1> TablaISR1 { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TablaISR2> TablaISR2 { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TablaISRSinEstimuloFiscal> TablaISRSinEstimuloFiscals { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.ISRLimitesConfiguracion> ISRLimitesConfiguracions { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.ISRLimites> ISRLimites { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.SalarioMinimo> SalarioMinimoes { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.PeriodoConfiguracion> PeriodoConfiguracions { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.ZonaDefault> ZonaDefaults { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TablaP> TablaPs { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TablaT> TablaTs { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TablaTT> TablaTTs { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.TopesdeVecesdeSalarioXRamo> TopesdeVecesdeSalarioXRamoes { get; set; }

        public System.Data.Entity.DbSet<NominasSAT.Models.Periodo> Periodoes { get; set; }
    }
}