using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class DanhMucSP
    {
        public string name{ get; set; }
        public int hoatDong { get; set; }
        public DanhMucSP(string name,int hoatDong) {
            this.name = name;
            this.hoatDong = hoatDong;
        }
    }
}