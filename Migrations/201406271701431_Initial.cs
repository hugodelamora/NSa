namespace NominasSAT.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AsistenteConfiguracions",
                c => new
                    {
                        AsistenteConfiguracionId = c.Int(nullable: false, identity: true),
                        Configuracion_RFC = c.String(maxLength: 128),
                        Empresa_EmpresaId = c.Int(),
                        Licencia_LicenseId = c.Int(),
                    })
                .PrimaryKey(t => t.AsistenteConfiguracionId)
                .ForeignKey("dbo.Configuracions", t => t.Configuracion_RFC)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaId)
                .ForeignKey("dbo.Licencias", t => t.Licencia_LicenseId)
                .Index(t => t.Configuracion_RFC)
                .Index(t => t.Empresa_EmpresaId)
                .Index(t => t.Licencia_LicenseId);
            
            CreateTable(
                "dbo.Licencias",
                c => new
                    {
                        LicenseId = c.Int(nullable: false, identity: true),
                        SerialNumber = c.String(),
                        ExpirationDate = c.DateTime(nullable: false),
                        EmpresaId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.LicenseId)
                .ForeignKey("dbo.Empresas", t => t.EmpresaId, cascadeDelete: true)
                .Index(t => t.EmpresaId);
            
            CreateTable(
                "dbo.FormadePagoes",
                c => new
                    {
                        PagoId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(),
                        Indice = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.PagoId);
            
            CreateTable(
                "dbo.NominaPeriodos",
                c => new
                    {
                        NominaPeriodoId = c.Int(nullable: false, identity: true),
                        NumeroPeriodo = c.Int(nullable: false),
                        RFCPatron = c.String(),
                        Empresa = c.Int(nullable: false),
                        Nombre = c.String(),
                        FechaInicioPeriodo = c.String(),
                        FechaFinPeriodo = c.String(),
                        TipoPeriodo = c.Int(nullable: false),
                        FechaDePago = c.String(),
                        FormaDePago = c.Int(nullable: false),
                        Status = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.NominaPeriodoId);
            
            CreateTable(
                "dbo.TipoPeriodoes",
                c => new
                    {
                        PeriodoId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(),
                        DiasMin = c.Int(nullable: false),
                        DiasMax = c.Int(nullable: false),
                        Indice = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.PeriodoId);
            
            AddColumn("dbo.AspNetUsers", "CompletedWizard", c => c.Boolean());
            AddColumn("dbo.NominaCFDIs", "NominaPeriodo", c => c.Int(nullable: false));
            AddColumn("dbo.NominaCFDIs", "Status", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.AsistenteConfiguracions", "Licencia_LicenseId", "dbo.Licencias");
            DropForeignKey("dbo.Licencias", "EmpresaId", "dbo.Empresas");
            DropForeignKey("dbo.AsistenteConfiguracions", "Empresa_EmpresaId", "dbo.Empresas");
            DropForeignKey("dbo.AsistenteConfiguracions", "Configuracion_RFC", "dbo.Configuracions");
            DropIndex("dbo.Licencias", new[] { "EmpresaId" });
            DropIndex("dbo.AsistenteConfiguracions", new[] { "Licencia_LicenseId" });
            DropIndex("dbo.AsistenteConfiguracions", new[] { "Empresa_EmpresaId" });
            DropIndex("dbo.AsistenteConfiguracions", new[] { "Configuracion_RFC" });
            DropColumn("dbo.NominaCFDIs", "Status");
            DropColumn("dbo.NominaCFDIs", "NominaPeriodo");
            DropColumn("dbo.AspNetUsers", "CompletedWizard");
            DropTable("dbo.TipoPeriodoes");
            DropTable("dbo.NominaPeriodos");
            DropTable("dbo.FormadePagoes");
            DropTable("dbo.Licencias");
            DropTable("dbo.AsistenteConfiguracions");
        }
    }
}
