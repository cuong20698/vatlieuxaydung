using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class ChiTietGioHang
    {
        private long maKH { get; set; }
        private string sanPham { get; set; }
        private int soLuong { get; set; }
        private double donGia { get; set; }
        private double thanhTien { get; set; }
        private long maSP { get; set; }
        private DateTime ngayLap { get; set; }
        private DateTime ngayGiao { get; set; }

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