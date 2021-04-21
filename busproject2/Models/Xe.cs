namespace busproject2.Models
{
    using System.Linq;
    using System;
    using System.Data.Entity;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Newtonsoft.Json;

    [Table("Xe")]
    public partial class Xe
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Xe()
        {
            ChiTietVeBans = new HashSet<ChiTietVeBan>();
        }

        [Key]
        public int MaXe { get; set; }

        [StringLength(50)]
        public string BienSo { get; set; }

        [StringLength(50)]
        public string LoaiXe { get; set; }

        [StringLength(500)]
        public string TinhTrangXe { get; set; }

        [Column("long")]
        [StringLength(50)]
        public string _long { get; set; }

        [StringLength(50)]
        public string lat { get; set; }

        public int MaTuyen { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        [JsonIgnore]
        public virtual ICollection<ChiTietVeBan> ChiTietVeBans { get; set; }
        [JsonIgnore]
        public virtual TaiXe TaiXe { get; set; }
        [JsonIgnore]
        public virtual TuyenXe TuyenXe { get; set; }

        public virtual TuyenXe TuyenXe { get; set; }

        public static List<Xe> GetAllBusByMaTuyen(int maTuyen)
        {
            List<Xe> tuyenXes = new List<Xe>();
            using (var db = new Model1())
            {
                db.Configuration.ProxyCreationEnabled = false;
                var query = db.Xes.Where(b => b.MaTuyen == maTuyen).Include(m => m.TuyenXe).Include(m => m.ChiTietVeBans).ToList();
                foreach (var item in query)
                {
                    tuyenXes.Add(item);
                }
                db.Configuration.LazyLoadingEnabled = false;
            }
            return tuyenXes;
        }
        public static List<Xe> GetAllBus()
        {
            List<Xe> tuyenXes = new List<Xe>();
            using (var db = new Model1())
            {
                db.Configuration.ProxyCreationEnabled = false;
                var query = db.Xes.Include(m => m.TuyenXe).Include(m => m.ChiTietVeBans).ToList();
                foreach (var item in query)
                {
                    tuyenXes.Add(item);
                }
                db.Configuration.LazyLoadingEnabled = false;
            }
            return tuyenXes;
        }

    }

}
