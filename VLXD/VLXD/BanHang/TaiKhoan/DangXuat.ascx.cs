using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD.BanHang.TaiKhoan
{
    public partial class DangXuat : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KH"] == null)
            {
                Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN");
            }
            else
            {
                dangXuat();
            }
            
        }

        private void dangXuat() {
            if (Session["KH"] != null)
            {
                Session.Remove("KH");
                Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN");
            }
        }
    }
}