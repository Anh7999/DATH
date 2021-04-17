namespace busproject2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    [Table("TuyenXe")]
    public partial class TuyenXe
    {
        Model1 db = new Model1();
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TuyenXe()
        {
            ChiTietLoTrinhs = new HashSet<ChiTietLoTrinh>();
            Xes = new HashSet<Xe>();
        }

        [Key]
        public int MaTuyen { get; set; }

        [StringLength(100)]
        public string TenTuyen { get; set; }

        public TimeSpan? ThoiGianBatDau { get; set; }

        public TimeSpan? ThoiGianKetThuc { get; set; }

        [Required]
        [StringLength(50)]
        public string LoaiTuyen { get; set; }

        public int SoTuyen { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietLoTrinh> ChiTietLoTrinhs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Xe> Xes { get; set; }
        public static List<TuyenXe> getAllTuyen()
        {
            List<TuyenXe> tuyenXes = new List<TuyenXe>();
            using (var db = new Model1())
            {
                // Display all Blogs from the database
                var query = from b in db.TuyenXes select b;
                foreach (var item in query)
                {
                    tuyenXes.Add(item);
                }
            }
            return tuyenXes;
        }
    }
}
