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
        public string dvt { get; set; }
        public string hinhAnh { get; set; }
        public string moTa { get; set; }
        public double giaKM { get; set; }
        public int soLuong { get; set; }
        public string loaiSP { get; set; }
        public bool hoatDong { get; set; }
        public bool spNoiBat { get; set; }
        public bool spBanChay { get; set; }

        public SP(int maSP,string tenSP, double gia, string dvt, string hinhAnh, string moTa, double giaKM, int  soLuong, string loaiSP, bool hoatDong, bool spNoiBat, bool spBanChay) {
            this.maSP = maSP;
            this.tenSP = tenSP;
            this.gia = gia;
            this.dvt = dvt;
            this.hinhAnh = hinhAnh;
            this.moTa = moTa;
            this.giaKM = giaKM;
            this.soLuong = soLuong;
            this.loaiSP = loaiSP;
            this.hoatDong = hoatDong;
            this.spNoiBat = spNoiBat;
            this.spBanChay = spBanChay;
        }
        public SP(int maSP, string tenSP, double gia, string hinhAnh, bool spNoiBat,string moTa, string loaiSP)
        {
            this.maSP = maSP;
            this.tenSP = tenSP;
            this.hinhAnh = hinhAnh;
            this.spNoiBat = spNoiBat;
            this.moTa = moTa;
            this.loaiSP = loaiSP;
            
        }
    }
}