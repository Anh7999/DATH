namespace busproject2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddIndentity2 : DbMigration
    {
        public override void Up()
        {
            DropPrimaryKey("dbo.Viphams");
            AddColumn("dbo.LoaiViPhams", "MotaHinhPhat", c => c.String());
        }
        
        public override void Down()
        {
            AddColumn("dbo.LoaiViPhams", "HInhPhat", c => c.String());
        }
    }
}
