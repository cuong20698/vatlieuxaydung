using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class DonHang
    {
        public long maDH { get; set; }
        public long maKH { get; set; }
        public double thanhTien { get; set; }
        public bool trangThai { get; set; }
        public DateTime ngayLap { get; set; }
        public DateTime ngayGiao { get; set; }

        public DonHang() {
        }

        public DonHang(long maDH, long maKH, double thanhTien, bool trangThai, DateTime ngayLap, DateTime ngayGiao) {
            this.maDH = maDH;
            this.maKH = maKH;
            this.thanhTien = thanhTien;
            this.trangThai = trangThai;
            this.ngayLap = ngayLap;
            this.ngayGiao = ngayGiao;
        }
    }
}