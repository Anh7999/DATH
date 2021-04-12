namespace busproject2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddAdd2 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.LoaiViPhams",
                c => new
                    {
                        Mavipha = c.Int(nullable: false, identity: true),
                        Ngayvipham = c.DateTime(nullable: false),
                        MaTaiXe = c.Int(nullable: false),
                        MaLoaiViPham = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Mavipha);
            
            CreateTable(
                "dbo.Viphams",
                c => new
                    {
                        MaLoaiViPham = c.Int(nullable: false, identity: true),
                        TenViPham = c.String(),
                        HinhPhat = c.String(),
                        LoaiViPham_Mavipha = c.Int(),
                        TaiXe_MaTaiXe = c.Int(),
                    })
                .PrimaryKey(t => t.MaLoaiViPham)
                .ForeignKey("dbo.LoaiViPhams", t => t.LoaiViPham_Mavipha)
                .ForeignKey("dbo.TaiXe", t => t.TaiXe_MaTaiXe)
                .Index(t => t.LoaiViPham_Mavipha)
                .Index(t => t.TaiXe_MaTaiXe);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Viphams", "TaiXe_MaTaiXe", "dbo.TaiXe");
            DropForeignKey("dbo.Viphams", "LoaiViPham_Mavipha", "dbo.LoaiViPhams");
            DropIndex("dbo.Viphams", new[] { "TaiXe_MaTaiXe" });
            DropIndex("dbo.Viphams", new[] { "LoaiViPham_Mavipha" });
            DropTable("dbo.Viphams");
            DropTable("dbo.LoaiViPhams");
        }
    }
}
