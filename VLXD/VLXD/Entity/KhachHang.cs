using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class KhachHang
    {
        public string userName { get; set; }
        public string passWord { get; set; }
        public string tenKH { get; set; }
        public string ghiChu { get; set; }
        public string email { get; set; }
        public string sdt { get; set; }
        public string diaChi { get; set; }
        public double tongTien { get; set; }
        public bool daXuly { get; set; }

        public KhachHang(string userName, string passWord, string tenKH, string ghiChu, string email, string sdt, string diaChi, double tongTien, bool daXuly) {
            this.userName = userName;
            this.passWord = passWord;
            this.tenKH = tenKH;
            this.ghiChu = ghiChu;
            this.email = email;
            this.sdt = sdt;
            this.diaChi = diaChi;
            this.tongTien = tongTien;
            this.daXuly = daXuly;
        }
    }
}