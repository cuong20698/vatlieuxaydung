using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class SP
    {
        public int maSP { get; set; }
        public string tenSP { get; set; }
        public double gia { get; set; }
        public string hinhAnh { get; set; }
        public bool spNoiBat { get; set; }
        public string moTa { get; set; }
        public int loaiSP { get; set; }

        public SP(int maSP,string tenSP, double gia, string hinhAnh, bool spNoiBat, string moTa, int loaiSP) {
            this.maSP = maSP;
            this.tenSP = tenSP;
            this.gia = gia;
            this.hinhAnh = hinhAnh;
            this.spNoiBat = spNoiBat;
            this.moTa = moTa;
            this.loaiSP = loaiSP;
        }
    }
}