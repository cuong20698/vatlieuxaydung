using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class SanPham
    {
        private string tenSP { get; set; }
        private double gia { get; set; }
        private string hinhAnh { get; set; }
        private bool spNoiBat { get; set; }
        private string moTa { get; set; }
        private int loaiSP { get; set; }

        public SanPham(string tenSP, double gia, string hinhAnh, bool spNoiBat, string moTa, int loaiSP) {
            this.tenSP = tenSP;
            this.gia = gia;
            this.hinhAnh = hinhAnh;
            this.spNoiBat = spNoiBat;
            this.moTa = moTa;
            this.loaiSP = loaiSP;
        }
    }
}