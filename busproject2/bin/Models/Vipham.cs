namespace busproject2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ViPham")]
    public partial class ViPham
    {
        [Key]
        [Column(Order = 0)]
        public int MaViPham { get; set; }

        public DateTime? NgayViPham { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaTaiXe { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaLoaiViPham { get; set; }

        public virtual LoaiViPham LoaiViPham { get; set; }

        public virtual TaiXe TaiXe { get; set; }
    }
}
