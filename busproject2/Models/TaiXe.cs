namespace busproject2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TaiXe")]
    public partial class TaiXe
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TaiXe()
        {
            LichTrinhs = new HashSet<LichTrinh>();
            ViPhams = new HashSet<ViPham>();
        }

        [Key]
        public int MaTaiXe { get; set; }

        [StringLength(50)]
        public string HoTen { get; set; }

        public DateTime? NgaySinh { get; set; }

        public bool? GioiTinh { get; set; }

        [StringLength(11)]
        public string SDT { get; set; }

        [StringLength(50)]
        public string Gmail { get; set; }

        [StringLength(500)]
        public string HinhAnh { get; set; }

        [StringLength(50)]
        public string QueQuan { get; set; }

        [StringLength(50)]
        public string DiaChi { get; set; }

        public DateTime? NgayBatDauHopDong { get; set; }

        public DateTime? NgayKetThucHopDong { get; set; }

        public double? Luong { get; set; }

        [StringLength(50)]
        public string BangLai { get; set; }

        [StringLength(50)]
        public string ChucVu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LichTrinh> LichTrinhs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ViPham> ViPhams { get; set; }
    }
}
