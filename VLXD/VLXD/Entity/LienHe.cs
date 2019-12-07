using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class LienHe
    {
        public string tenCty { get; set; }
        public string moTa { get; set; }
        public string diaChi { get; set; }
        public string tel { get; set; }
        public string fax { get; set; }
        public string hotLine { get; set; }
        public string email { get; set; }

        public LienHe(string tenCty, string moTa, string diaChi, string tel, string fax, string hotLine, string mail) {
            this.tenCty = tenCty;
            this.moTa = moTa;
            this.diaChi = diaChi;
            this.tel = tel;
            this.fax = fax;
            this.hotLine = hotLine;
            this.email = email;
        }
    }
}