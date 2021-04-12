using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace busproject2.Models
{
    public class Vipham
    {
        [Key]
        public int MaViPham { get; set; }
        public string TenViPham { get; set; }
        public string HinhPhat { get; set; }

        public virtual TaiXe TaiXe { get; set; }
        public virtual LoaiViPham LoaiViPham { get; set; }

    }
}