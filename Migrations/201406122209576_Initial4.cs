namespace NominasSAT.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial4 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.NominaCFDIs", "Empresa_EmpresaId", "dbo.Empresas");
            DropForeignKey("dbo.NominaCFDIs", "User_Codigo", "dbo.Empleadoes");
            DropIndex("dbo.NominaCFDIs", new[] { "Empresa_EmpresaId" });
            DropIndex("dbo.NominaCFDIs", new[] { "User_Codigo" });
            AddColumn("dbo.NominaCFDIs", "User", c => c.Int(nullable: false));
            AddColumn("dbo.NominaCFDIs", "Empresa", c => c.Int(nullable: false));
            DropColumn("dbo.NominaCFDIs", "Empresa_EmpresaId");
            DropColumn("dbo.NominaCFDIs", "User_Codigo");
        }
        
        public override void Down()
        {
            AddColumn("dbo.NominaCFDIs", "User_Codigo", c => c.Int());
            AddColumn("dbo.NominaCFDIs", "Empresa_EmpresaId", c => c.Int());
            DropColumn("dbo.NominaCFDIs", "Empresa");
            DropColumn("dbo.NominaCFDIs", "User");
            CreateIndex("dbo.NominaCFDIs", "User_Codigo");
            CreateIndex("dbo.NominaCFDIs", "Empresa_EmpresaId");
            AddForeignKey("dbo.NominaCFDIs", "User_Codigo", "dbo.Empleadoes", "Codigo");
            AddForeignKey("dbo.NominaCFDIs", "Empresa_EmpresaId", "dbo.Empresas", "EmpresaId");
        }
    }
}
