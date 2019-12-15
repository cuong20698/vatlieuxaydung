using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD.BanHang.GioHang
{
    public partial class GioHang : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadLink();
        }
        private void loadLink()
        {
            string modul = "";
            string modul1 = "";
            if (Request.QueryString["modul"] != null && Request.QueryString["modul1"] != null) {
                modul = Request.QueryString["modul"];
                modul1 = Request.QueryString["modul1"];
            }
            if (modul.Equals("TrangChu"))
            {
                lblH1.Text = "Trang chủ";
            }
            if (modul1.Equals("GH"))
            {
                lblH2.Text = "Giỏ hàng";
            }
        }
    }
}