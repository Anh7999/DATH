namespace busproject2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddAddressToStudent : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Account",
                c => new
                    {
                        MaTaiKhoan = c.Int(nullable: false, identity: true),
                        TenTaiKhoan = c.String(maxLength: 50, unicode: false),
                        MatKhau = c.String(maxLength: 50, unicode: false),
                        Email = c.String(maxLength: 50, unicode: false),
                        QueQuan = c.String(maxLength: 50),
                        SDT = c.String(maxLength: 11, unicode: false),
                        GioiTinh = c.Boolean(),
                        NgaySinh = c.DateTime(),
                    })
                .PrimaryKey(t => t.MaTaiKhoan);
            
            CreateTable(
                "dbo.Ben",
                c => new
                    {
                        MaBen = c.Int(nullable: false, identity: true),
                        TenBen = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaBen);
            
            CreateTable(
                "dbo.ChiTietLoTrinh",
                c => new
                    {
                        MaTuyen = c.Int(nullable: false),
                        MaBen = c.Int(nullable: false),
                        ThuTu = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.MaTuyen, t.MaBen })
                .ForeignKey("dbo.TuyenXe", t => t.MaTuyen)
                .ForeignKey("dbo.Ben", t => t.MaBen)
                .Index(t => t.MaTuyen)
                .Index(t => t.MaBen);
            
            CreateTable(
                "dbo.TuyenXe",
                c => new
                    {
                        MaTuyen = c.Int(nullable: false, identity: true),
                        TenTuyen = c.String(maxLength: 100),
                        ThoiGianBatDau = c.Time(precision: 7),
                        ThoiGianKetThuc = c.Time(precision: 7),
                        LoaiTuyen = c.String(nullable: false, maxLength: 50),
                        SoTuyen = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.MaTuyen);
            
            CreateTable(
                "dbo.Xe",
                c => new
                    {
                        MaXe = c.Int(nullable: false, identity: true),
                        BienSo = c.String(maxLength: 50, unicode: false),
                        LoaiXe = c.String(maxLength: 50, unicode: false),
                        TinhTrangXe = c.String(maxLength: 500),
                        MaTuyen = c.Int(nullable: false),
                        MaTaiXe = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.MaXe)
                .ForeignKey("dbo.TaiXe", t => t.MaTaiXe)
                .ForeignKey("dbo.TuyenXe", t => t.MaTuyen)
                .Index(t => t.MaTuyen)
                .Index(t => t.MaTaiXe);
            
            CreateTable(
                "dbo.ChiTietVeBan",
                c => new
                    {
                        MaVe = c.Int(nullable: false),
                        MaXe = c.Int(nullable: false),
                        NgayBan = c.DateTime(),
                        SoLuongVeBan = c.Int(),
                    })
                .PrimaryKey(t => new { t.MaVe, t.MaXe })
                .ForeignKey("dbo.VeXe", t => t.MaVe)
                .ForeignKey("dbo.Xe", t => t.MaXe)
                .Index(t => t.MaVe)
                .Index(t => t.MaXe);
            
            CreateTable(
                "dbo.VeXe",
                c => new
                    {
                        MaVe = c.Int(nullable: false, identity: true),
                        LoaiVe = c.String(maxLength: 50),
                        Gia = c.Double(),
                    })
                .PrimaryKey(t => t.MaVe);
            
            CreateTable(
                "dbo.TaiXe",
                c => new
                    {
                        MaTaiXe = c.Int(nullable: false, identity: true),
                        HoTen = c.String(maxLength: 50),
                        NgaySinh = c.DateTime(),
                        GioiTinh = c.Boolean(),
                        SDT = c.String(maxLength: 11, unicode: false),
                        Gmail = c.String(maxLength: 50, unicode: false),
                        HinhAnh = c.String(maxLength: 500, unicode: false),
                        QueQuan = c.String(maxLength: 50),
                        DiaChi = c.String(maxLength: 50),
                        NgayBatDauHopDong = c.DateTime(),
                        NgayKetThucHopDong = c.DateTime(),
                        Luong = c.Double(),
                        BangLai = c.String(maxLength: 50),
                        ChucVu = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaTaiXe);
            
            CreateTable(
                "dbo.ViPham",
                c => new
                    {
                        MaViPham = c.Int(nullable: false),
                        MaTaiXe = c.Int(nullable: false),
                        MaLoaiViPham = c.Int(nullable: false),
                        NgayViPham = c.DateTime(),
                    })
                .PrimaryKey(t => new { t.MaViPham, t.MaTaiXe, t.MaLoaiViPham })
                .ForeignKey("dbo.LoaiViPham", t => t.MaLoaiViPham)
                .ForeignKey("dbo.TaiXe", t => t.MaTaiXe)
                .Index(t => t.MaTaiXe)
                .Index(t => t.MaLoaiViPham);
            
            CreateTable(
                "dbo.LoaiViPham",
                c => new
                    {
                        MaLoaiViPham = c.Int(nullable: false, identity: true),
                        TenViPham = c.String(maxLength: 50),
                        HinhPhat = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.MaLoaiViPham);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.ChiTietLoTrinh", "MaBen", "dbo.Ben");
            DropForeignKey("dbo.Xe", "MaTuyen", "dbo.TuyenXe");
            DropForeignKey("dbo.Xe", "MaTaiXe", "dbo.TaiXe");
            DropForeignKey("dbo.ViPham", "MaTaiXe", "dbo.TaiXe");
            DropForeignKey("dbo.ViPham", "MaLoaiViPham", "dbo.LoaiViPham");
            DropForeignKey("dbo.ChiTietVeBan", "MaXe", "dbo.Xe");
            DropForeignKey("dbo.ChiTietVeBan", "MaVe", "dbo.VeXe");
            DropForeignKey("dbo.ChiTietLoTrinh", "MaTuyen", "dbo.TuyenXe");
            DropIndex("dbo.ViPham", new[] { "MaLoaiViPham" });
            DropIndex("dbo.ViPham", new[] { "MaTaiXe" });
            DropIndex("dbo.ChiTietVeBan", new[] { "MaXe" });
            DropIndex("dbo.ChiTietVeBan", new[] { "MaVe" });
            DropIndex("dbo.Xe", new[] { "MaTaiXe" });
            DropIndex("dbo.Xe", new[] { "MaTuyen" });
            DropIndex("dbo.ChiTietLoTrinh", new[] { "MaBen" });
            DropIndex("dbo.ChiTietLoTrinh", new[] { "MaTuyen" });
            DropTable("dbo.LoaiViPham");
            DropTable("dbo.ViPham");
            DropTable("dbo.TaiXe");
            DropTable("dbo.VeXe");
            DropTable("dbo.ChiTietVeBan");
            DropTable("dbo.Xe");
            DropTable("dbo.TuyenXe");
            DropTable("dbo.ChiTietLoTrinh");
            DropTable("dbo.Ben");
            DropTable("dbo.Account");
        }
    }
}
