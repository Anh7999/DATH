namespace busproject2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietVeBan")]
    public partial class ChiTietVeBan
    {
        [Key]
        [Column(Order = 0)]
        public int MaVeBan { get; set; }

        public int? SoLuongVeBan { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaVe { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaXe { get; set; }

        public virtual VeXe VeXe { get; set; }

        public virtual Xe Xe { get; set; }
    }
}
