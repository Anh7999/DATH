namespace busproject2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Ben")]
    public partial class Ben
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Ben()
        {
            ChiTietLoTrinhs = new HashSet<ChiTietLoTrinh>();
        }

        [Key]
        public int MaBen { get; set; }

        [StringLength(50)]
        public string TenBen { get; set; }

        [StringLength(50)]
        public string lat { get; set; }

        [Column("long")]
        [StringLength(50)]
        public string _long { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietLoTrinh> ChiTietLoTrinhs { get; set; }
    }
}
