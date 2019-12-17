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
        public DateTime ngaySinh { get; set; }
        public bool gioiTinh { get; set; }
        public string email { get; set; }
        public string sdt { get; set; }
        public string diaChi { get; set; }
        public bool hoatDong { get; set; }

        public KhachHang(string userName, string passWord, string tenKH, DateTime ngaySinh, bool gioiTinh, string email, string sdt, string diaChi, bool hoatDong) {
            this.userName = userName;
            this.passWord = passWord;
            this.tenKH = tenKH;
            this.ngaySinh = ngaySinh;
            this.gioiTinh = gioiTinh;
            this.email = email;
            this.sdt = sdt;
            this.diaChi = diaChi;
            this.hoatDong = hoatDong;
        }

        public KhachHang() { }
    }
}