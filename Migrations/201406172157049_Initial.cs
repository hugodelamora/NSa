namespace NominasSAT.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Bancoes",
                c => new
                    {
                        Clave = c.String(nullable: false, maxLength: 128),
                        NombreCorto = c.String(),
                        Nombre = c.String(),
                    })
                .PrimaryKey(t => t.Clave);
            
            CreateTable(
                "dbo.Configuracions",
                c => new
                    {
                        RFC = c.String(nullable: false, maxLength: 128),
                        RiesgoTrabajo = c.Double(nullable: false),
                        PorcentajeInfonavit = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.RFC);
            
            CreateTable(
                "dbo.Empleadoes",
                c => new
                    {
                        Codigo = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false),
                        RFC = c.String(nullable: false),
                        CURP = c.String(nullable: false),
                        NumSeguroSocial = c.String(nullable: false),
                        SalarioDiario = c.Decimal(nullable: false, precision: 18, scale: 2),
                        SBC = c.Decimal(nullable: false, precision: 18, scale: 2),
                        FechaInicioLaboral = c.DateTime(nullable: false),
                        NumdeEmpleado = c.String(),
                        Regimen = c.Int(),
                        Departamento = c.String(),
                        CLABE = c.String(),
                        Banco = c.Int(),
                        Puesto = c.String(),
                        TipoContrato = c.String(nullable: false),
                        TipoJornada = c.String(),
                        PeriodicidadPago = c.String(),
                        RiesgoPuesto = c.Int(),
                        Empresa = c.Int(nullable: false),
                        RFCPatron = c.String(),
                        Pais = c.String(),
                        Estado = c.String(),
                        Localidad = c.String(),
                        Municipio = c.String(),
                        Calle = c.String(),
                        NumeroExterior = c.String(),
                        NumeroInterior = c.String(),
                        Colonia = c.String(),
                        CP = c.String(),
                        Email = c.String(),
                    })
                .PrimaryKey(t => t.Codigo);
            
            CreateTable(
                "dbo.Empresas",
                c => new
                    {
                        EmpresaId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(),
                        RFC = c.String(),
                        Regimen = c.String(),
                        RegistroPatronal = c.String(),
                        ClaseRiesgoTrabajo = c.String(),
                        LugarExpedicion = c.String(),
                        Pais = c.String(),
                        Estado = c.String(),
                        Localidad = c.String(),
                        Municipio = c.String(),
                        Calle = c.String(),
                        NumeroExterior = c.String(),
                        NumeroInterior = c.String(),
                        Colonia = c.String(),
                        CP = c.String(),
                        CertificadoCer = c.String(),
                        CertificadoKey = c.String(),
                        CertificadoContasena = c.String(),
                        PFX = c.Binary(),
                        User_Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.EmpresaId)
                .ForeignKey("dbo.AspNetUsers", t => t.User_Id)
                .Index(t => t.User_Id);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        UserName = c.String(),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        Nombres = c.String(),
                        Apellidos = c.String(),
                        Email = c.String(),
                        NombreRazonSocial = c.String(),
                        RFC = c.String(),
                        Regimen = c.String(),
                        RegistroPatronal = c.String(),
                        ClaseRiesgoTrabajo = c.String(),
                        LugarExpedicion = c.String(),
                        Calle = c.String(),
                        NumeroExterior = c.String(),
                        NumeroInterior = c.String(),
                        Colonia = c.String(),
                        CP = c.String(),
                        Ciudad = c.String(),
                        Municipio = c.String(),
                        Estado = c.String(),
                        CertificadoCer = c.String(),
                        CertificadoKey = c.String(),
                        CertificadoContasena = c.String(),
                        PFX = c.Binary(),
                        Discriminator = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                        User_Id = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.User_Id, cascadeDelete: true)
                .Index(t => t.User_Id);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.LoginProvider, t.ProviderKey })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.RoleId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Estadoes",
                c => new
                    {
                        EstadoID = c.Int(nullable: false, identity: true),
                        nombre = c.String(),
                        abreviatura = c.String(),
                    })
                .PrimaryKey(t => t.EstadoID);
            
            CreateTable(
                "dbo.ISRLimites",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        QuintoLimiteInferior = c.Double(nullable: false),
                        CantidadQuintoNivel = c.Double(nullable: false),
                        DiasTarifa = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.ISRLimitesConfiguracions",
                c => new
                    {
                        RFC = c.String(nullable: false, maxLength: 128),
                        QuintoLimiteInferior = c.Double(nullable: false),
                        CantidadQuintoNivel = c.Double(nullable: false),
                        DiasTarifa = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.RFC);
            
            CreateTable(
                "dbo.NominaCFDIs",
                c => new
                    {
                        NominaID = c.Int(nullable: false, identity: true),
                        User = c.Int(nullable: false),
                        Empresa = c.Int(nullable: false),
                        SalarioDiario = c.String(),
                        SBC = c.String(),
                        DiasPagar = c.Int(nullable: false),
                        Incidencias = c.Int(nullable: false),
                        Ausentismo = c.Int(nullable: false),
                        DiasTrabajados = c.Int(nullable: false),
                        HorasExtrasDobles = c.Int(nullable: false),
                        HorasExtrasTriples = c.Int(nullable: false),
                        PSueldosSalariosRayasJornales = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PSueldoExcento = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PSueldoGravado = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PHorasExtrasDobles = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PHorasExtrasTriples = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PHorasExtras = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PHorasExtrasExcento = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PHorasExtrasGravado = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PComisiones = c.Decimal(nullable: false, precision: 18, scale: 2),
                        POtros = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PPrimavacacional = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PTotalPercepciones = c.Decimal(nullable: false, precision: 18, scale: 2),
                        DISR = c.Decimal(nullable: false, precision: 18, scale: 2),
                        DSubsidio = c.Decimal(nullable: false, precision: 18, scale: 2),
                        D1 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        D2 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        D3 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        D4 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        D5 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        D6 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        SeguridadSocial = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Infonavit = c.Decimal(nullable: false, precision: 18, scale: 2),
                        OtrasDeducciones = c.Decimal(nullable: false, precision: 18, scale: 2),
                        TotalDeduccion = c.Decimal(nullable: false, precision: 18, scale: 2),
                        SalarioNeto = c.Decimal(nullable: false, precision: 18, scale: 2),
                        TipoIncapacidad = c.String(),
                        DescuentoIncapacidad = c.Int(nullable: false),
                        RFC = c.String(),
                        CURP = c.String(),
                        NumSeguroSocial = c.String(),
                        FechaInicioLaboral = c.String(),
                        XML = c.String(),
                    })
                .PrimaryKey(t => t.NominaID);
            
            CreateTable(
                "dbo.PeriodoConfiguracions",
                c => new
                    {
                        RFC = c.String(nullable: false, maxLength: 128),
                        Periodo = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.RFC);
            
            CreateTable(
                "dbo.Periodoes",
                c => new
                    {
                        PeriodoID = c.Int(nullable: false, identity: true),
                        PeriodoP = c.Int(nullable: false),
                        Predeterminado = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.PeriodoID);
            
            CreateTable(
                "dbo.Regimen",
                c => new
                    {
                        Clave = c.Int(nullable: false, identity: true),
                        Descripcion = c.String(),
                    })
                .PrimaryKey(t => t.Clave);
            
            CreateTable(
                "dbo.RiesgoPuestoes",
                c => new
                    {
                        Clave = c.Int(nullable: false, identity: true),
                        Descripcion = c.String(),
                    })
                .PrimaryKey(t => t.Clave);
            
            CreateTable(
                "dbo.SalarioMinimoConfiguracions",
                c => new
                    {
                        RFC = c.String(nullable: false, maxLength: 128),
                        Zona = c.String(),
                        Monto = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.RFC);
            
            CreateTable(
                "dbo.SalarioMinimoes",
                c => new
                    {
                        Zona = c.String(nullable: false, maxLength: 128),
                        Monto = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.Zona);
            
            CreateTable(
                "dbo.TablaISR1",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        LimiteInferior = c.Double(nullable: false),
                        CuotaFija = c.Double(nullable: false),
                        Porcentajetarifa = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.TablaISR2",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        LimiteInferior = c.Double(nullable: false),
                        Subsidio = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.TablaISRSinEstimuloFiscals",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        LimiteInferior = c.Double(nullable: false),
                        Subsidio = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.TablaPs",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        Periodo = c.Int(nullable: false),
                        TablaP1 = c.Double(nullable: false),
                        TablaP2 = c.Double(nullable: false),
                        TablaP3 = c.Double(nullable: false),
                        TablaP4 = c.Double(nullable: false),
                        TablaP5 = c.Double(nullable: false),
                        TablaP6 = c.Double(nullable: false),
                        TablaP7 = c.Double(nullable: false),
                        TablaP8 = c.Double(nullable: false),
                        TablaP9 = c.Double(nullable: false),
                        TablaP10 = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.TablaTs",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        Periodo = c.Int(nullable: false),
                        TablaT1 = c.Double(nullable: false),
                        TablaT2 = c.Double(nullable: false),
                        TablaT3 = c.Double(nullable: false),
                        TablaT4 = c.Double(nullable: false),
                        TablaT5 = c.Double(nullable: false),
                        TablaT6 = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.TablaTTs",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        Periodo = c.Int(nullable: false),
                        TablaTT1 = c.Double(nullable: false),
                        TablaTT2 = c.Double(nullable: false),
                        TablaTT3 = c.Double(nullable: false),
                        TablaTT4 = c.Double(nullable: false),
                        TablaTT5 = c.Double(nullable: false),
                        TablaTT6 = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.TipoDeduccions",
                c => new
                    {
                        Clave = c.String(nullable: false, maxLength: 128),
                        Descripcion = c.String(),
                        Comentario = c.String(),
                    })
                .PrimaryKey(t => t.Clave);
            
            CreateTable(
                "dbo.TipoIncapacidads",
                c => new
                    {
                        Clave = c.Int(nullable: false, identity: true),
                        Descripcion = c.String(),
                    })
                .PrimaryKey(t => t.Clave);
            
            CreateTable(
                "dbo.TipoPercepcions",
                c => new
                    {
                        Clave = c.String(nullable: false, maxLength: 128),
                        Descripcion = c.String(),
                    })
                .PrimaryKey(t => t.Clave);
            
            CreateTable(
                "dbo.TopesdeVecesdeSalarioXRamoes",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        Periodo = c.Int(nullable: false),
                        Tope1 = c.Double(nullable: false),
                        Tope2 = c.Double(nullable: false),
                        Tope3 = c.Double(nullable: false),
                        Tope4 = c.Double(nullable: false),
                        Tope5 = c.Double(nullable: false),
                        Tope6 = c.Double(nullable: false),
                        Tope7 = c.Double(nullable: false),
                        Tope8 = c.Double(nullable: false),
                        Tope9 = c.Double(nullable: false),
                        Tope10 = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.ZonaDefaults",
                c => new
                    {
                        RFC = c.String(nullable: false, maxLength: 128),
                        Zona = c.String(),
                    })
                .PrimaryKey(t => t.RFC);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Empresas", "User_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "User_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropIndex("dbo.Empresas", new[] { "User_Id" });
            DropIndex("dbo.AspNetUserClaims", new[] { "User_Id" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropTable("dbo.ZonaDefaults");
            DropTable("dbo.TopesdeVecesdeSalarioXRamoes");
            DropTable("dbo.TipoPercepcions");
            DropTable("dbo.TipoIncapacidads");
            DropTable("dbo.TipoDeduccions");
            DropTable("dbo.TablaTTs");
            DropTable("dbo.TablaTs");
            DropTable("dbo.TablaPs");
            DropTable("dbo.TablaISRSinEstimuloFiscals");
            DropTable("dbo.TablaISR2");
            DropTable("dbo.TablaISR1");
            DropTable("dbo.SalarioMinimoes");
            DropTable("dbo.SalarioMinimoConfiguracions");
            DropTable("dbo.RiesgoPuestoes");
            DropTable("dbo.Regimen");
            DropTable("dbo.Periodoes");
            DropTable("dbo.PeriodoConfiguracions");
            DropTable("dbo.NominaCFDIs");
            DropTable("dbo.ISRLimitesConfiguracions");
            DropTable("dbo.ISRLimites");
            DropTable("dbo.Estadoes");
            DropTable("dbo.AspNetRoles");
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.Empresas");
            DropTable("dbo.Empleadoes");
            DropTable("dbo.Configuracions");
            DropTable("dbo.Bancoes");
        }
    }
}
