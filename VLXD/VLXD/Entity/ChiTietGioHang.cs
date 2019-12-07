using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class ChiTietGioHang
    {
        public long maKH { get; set; }
        public string sanPham { get; set; }
        public int soLuong { get; set; }
        public double donGia { get; set; }
        public double thanhTien { get; set; }
        public long maSP { get; set; }
        public DateTime ngayLap { get; set; }
        public DateTime ngayGiao { get; set; }

        public ChiTietGioHang(long maKH, string sanPham, int soLuong, double donGia, double thanhTien, long maSP, DateTime ngayLap, DateTime ngayGiao) {
            this.maKH = maKH;
            this.sanPham = sanPham;
            this.soLuong = soLuong;
            this.donGia = donGia;
            this.thanhTien = thanhTien;
            this.maSP = maSP;
            this.ngayLap = ngayLap;
            this.ngayGiao = ngayGiao;
        }
    }
}