using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class LienHe
    {
        private string tenCty { get; set; }
        private string moTa { get; set; }
        private string diaChi { get; set; }
        private string tel { get; set; }
        private string fax { get; set; }
        private string hotLine { get; set; }
        private string email { get; set; }

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