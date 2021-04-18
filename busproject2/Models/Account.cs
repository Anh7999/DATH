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
        [Key]
        public int MaTaiKhoan { get; set; }

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

        [StringLength(50)]
        public string Access { get; set; }

        [StringLength(50)]
        public string Status { get; set; }
    }
}
