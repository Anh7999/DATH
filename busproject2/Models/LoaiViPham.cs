namespace busproject2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiViPham")]
    public partial class LoaiViPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiViPham()
        {
            ViPhams = new HashSet<ViPham>();
        }

        [Key]
        public int MaLoaiViPham { get; set; }

        [StringLength(50)]
        public string TenViPham { get; set; }

        [StringLength(100)]
        public string HinhPhat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ViPham> ViPhams { get; set; }
    }
}
