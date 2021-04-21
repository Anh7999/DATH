namespace busproject2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Account")]
    public partial class Account
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Account()
        {
            ChiTietVeBans = new HashSet<ChiTietVeBan>();
        }

        [Key]
        public int MaTaiKhoan { get; set; }

        [StringLength(50)]
        public string HoTen { get; set; }

        [StringLength(50)]
        public string TenTaiKhoan { get; set; }

        [StringLength(50)]
        public string MatKhau { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [StringLength(50)]
        public string QueQuan { get; set; }

        [StringLength(11)]
        public string SDT { get; set; }

        public bool? GioiTinh { get; set; }

        public DateTime? NgaySinh { get; set; }

        public int? Access { get; set; }

        public int? Status { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietVeBan> ChiTietVeBans { get; set; }
    }
}
