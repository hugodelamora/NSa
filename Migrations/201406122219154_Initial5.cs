namespace NominasSAT.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial5 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Empleadoes", "Empresa_EmpresaId", "dbo.Empresas");
            DropIndex("dbo.Empleadoes", new[] { "Empresa_EmpresaId" });
            AddColumn("dbo.Empleadoes", "Empresa", c => c.Int(nullable: false));
            DropColumn("dbo.Empleadoes", "Empresa_EmpresaId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Empleadoes", "Empresa_EmpresaId", c => c.Int());
            DropColumn("dbo.Empleadoes", "Empresa");
            CreateIndex("dbo.Empleadoes", "Empresa_EmpresaId");
            AddForeignKey("dbo.Empleadoes", "Empresa_EmpresaId", "dbo.Empresas", "EmpresaId");
        }
    }
}
