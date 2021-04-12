namespace busproject2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddAdd3 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Viphams", "LoaiViPham_Mavipha", "dbo.LoaiViPhams");
            RenameColumn(table: "dbo.Viphams", name: "LoaiViPham_Mavipha", newName: "LoaiViPham_MaLoaiViPham");
            RenameIndex(table: "dbo.Viphams", name: "IX_LoaiViPham_Mavipha", newName: "IX_LoaiViPham_MaLoaiViPham");
            DropPrimaryKey("dbo.LoaiViPhams");
            AddColumn("dbo.LoaiViPhams", "HInhPhat", c => c.String());
            AlterColumn("dbo.LoaiViPhams", "MaLoaiViPham", c => c.Int(nullable: false, identity: true));
            AddPrimaryKey("dbo.LoaiViPhams", "MaLoaiViPham");
            AddForeignKey("dbo.Viphams", "LoaiViPham_MaLoaiViPham", "dbo.LoaiViPhams", "MaLoaiViPham");
            DropColumn("dbo.LoaiViPhams", "Mavipha");
        }
        
        public override void Down()
        {
            AddColumn("dbo.LoaiViPhams", "Mavipha", c => c.Int(nullable: false, identity: true));
            DropForeignKey("dbo.Viphams", "LoaiViPham_MaLoaiViPham", "dbo.LoaiViPhams");
            DropPrimaryKey("dbo.LoaiViPhams");
            AlterColumn("dbo.LoaiViPhams", "MaLoaiViPham", c => c.Int(nullable: false));
            DropColumn("dbo.LoaiViPhams", "HInhPhat");
            AddPrimaryKey("dbo.LoaiViPhams", "Mavipha");
            RenameIndex(table: "dbo.Viphams", name: "IX_LoaiViPham_MaLoaiViPham", newName: "IX_LoaiViPham_Mavipha");
            RenameColumn(table: "dbo.Viphams", name: "LoaiViPham_MaLoaiViPham", newName: "LoaiViPham_Mavipha");
            AddForeignKey("dbo.Viphams", "LoaiViPham_Mavipha", "dbo.LoaiViPhams", "Mavipha");
        }
    }
}
