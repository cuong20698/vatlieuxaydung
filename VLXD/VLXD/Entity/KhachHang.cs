using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class KhachHang
    {
        private string userName { get; set; }
        private string passWord { get; set; }
        private string tenKH { get; set; }
        private string ghiChu { get; set; }
        private string email { get; set; }
        private string sdt { get; set; }
        private string diaChi { get; set; }
        private double tongTien { get; set; }
        private bool daXuly { get; set; }

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