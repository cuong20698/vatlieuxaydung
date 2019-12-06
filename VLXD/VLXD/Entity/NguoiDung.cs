using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class NguoiDung
    {
        private string userName { get; set; }
        private string passWord { get; set; }
        private string email { get; set; }
        private string diaChi { get; set; }
        private string sdt { get; set; }
        private int idGroup { get; set; }

        public NguoiDung(string userName, string passWord, string email, string diaChi, string sdt, int idGroup) {
            this.userName = userName;
            this.passWord = passWord;
            this.email = email;
            this.diaChi = diaChi;
            this.sdt = sdt;
            this.idGroup = idGroup;
        }
    }
}