using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class ChiTietDonHang
    {
        public string tenSP { get; set; }
        public string hinhAnh { get; set; }
        public int soLuong { get; set; }
        public double donGia { get; set; }
        public double thanhTien { get; set; }
        public long maSP { get; set; }
        public long maDH { get; set; }

        public ChiTietDonHang() { }

        public ChiTietDonHang(string tenSP, string hinhAnh, int soLuong, double donGia, double thanhTien, long maSP, long maDH) {
           
            this.tenSP = tenSP;
            this.hinhAnh = hinhAnh;
            this.soLuong = soLuong;
            this.donGia = donGia;
            this.thanhTien = thanhTien;
            this.maSP = maSP;
            this.maDH = maDH;
        }
    }
}