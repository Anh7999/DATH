namespace busproject2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LichTrinh")]
    public partial class LichTrinh
    {
        [Key]
        [Column(Order = 0)]
        public DateTime NgayXuatBen { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaTaiXe { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaTuyen { get; set; }

        public DateTime? NgayHoanThanh { get; set; }

        public int? SoTuyen { get; set; }

        public virtual TaiXe TaiXe { get; set; }

        public virtual TuyenXe TuyenXe { get; set; }
    }
}
