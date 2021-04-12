using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace busproject2.Models
{
    public class LoaiViPham
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int MaLoaiViPham { get; set; }
        public DateTime Ngayvipham { get; set; }
        public int MaTaiXe { get; set; }
        public string MotaHinhPhat { get; set; }

    }
}