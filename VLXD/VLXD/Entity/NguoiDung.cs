using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class NguoiDung
    {
        public string userName { get; set; }
        public string passWord { get; set; }
        public string hoTen { get; set; }
        public string email { get; set; }
        public string diaChi { get; set; }
        public string sdt { get; set; }
        public int idGroup { get; set; }
        public bool hoatDong { get; set; }

        public NguoiDung(string userName, string passWord, string hoTen, string email, string diaChi, string sdt, int idGroup, bool hoatDong) {
            this.userName = userName;
            this.passWord = passWord;
            this.hoTen = hoTen;
            this.email = email;
            this.diaChi = diaChi;
            this.sdt = sdt;
            this.idGroup = idGroup;
            this.hoatDong = hoatDong;
        }
    }
}