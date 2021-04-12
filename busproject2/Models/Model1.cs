using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace busproject2.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Ben> Bens { get; set; }
        public virtual DbSet<ChiTietLoTrinh> ChiTietLoTrinhs { get; set; }
        public virtual DbSet<ChiTietVeBan> ChiTietVeBans { get; set; }
        public virtual DbSet<TaiXe> TaiXes { get; set; }
        public virtual DbSet<TuyenXe> TuyenXes { get; set; }
        public virtual DbSet<VeXe> VeXes { get; set; }
        public virtual DbSet<Xe> Xes { get; set; }
        public virtual DbSet<LoaiViPham> LoaiViPhams { get; set; }
        public virtual DbSet<Vipham> Viphams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Account>()
                .Property(e => e.TenTaiKhoan)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.MatKhau)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Account>()
                .Property(e => e.SDT)
                .IsUnicode(false);

            modelBuilder.Entity<Admin>()
                .Property(e => e.TenTaiKhoan)
                .IsUnicode(false);

            modelBuilder.Entity<Admin>()
                .Property(e => e.MatKhau)
                .IsUnicode(false);

            modelBuilder.Entity<Ben>()
                .HasMany(e => e.ChiTietLoTrinhs)
                .WithRequired(e => e.Ben)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TaiXe>()
                .Property(e => e.SDT)
                .IsUnicode(false);

            modelBuilder.Entity<TaiXe>()
                .Property(e => e.Gmail)
                .IsUnicode(false);

            modelBuilder.Entity<TaiXe>()
                .Property(e => e.HinhAnh)
                .IsUnicode(false);

            modelBuilder.Entity<TaiXe>()
                .HasMany(e => e.Xes)
                .WithRequired(e => e.TaiXe)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TuyenXe>()
                .HasMany(e => e.ChiTietLoTrinhs)
                .WithRequired(e => e.TuyenXe)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TuyenXe>()
                .HasMany(e => e.Xes)
                .WithRequired(e => e.TuyenXe)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<VeXe>()
                .HasMany(e => e.ChiTietVeBans)
                .WithRequired(e => e.VeXe)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Xe>()
                .Property(e => e.BienSo)
                .IsUnicode(false);

            modelBuilder.Entity<Xe>()
                .Property(e => e.LoaiXe)
                .IsUnicode(false);

            modelBuilder.Entity<Xe>()
                .HasMany(e => e.ChiTietVeBans)
                .WithRequired(e => e.Xe)
                .WillCascadeOnDelete(false);
            modelBuilder.Entity<LoaiViPham>()
                .Property(c => c.MaLoaiViPham)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
        }
    }
}
