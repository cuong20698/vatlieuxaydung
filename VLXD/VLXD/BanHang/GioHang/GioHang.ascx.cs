using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.BanHang.GioHang
{
    public partial class GioHang : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadTrang();
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

        private void loadTrang() {
            string modul2 = "";
            if (Request.QueryString["modul2"] != null)
            {
                modul2 = Request.QueryString["modul2"];
            }

            switch (modul2)
            {
                case "DSDH":
                    PlaceHolder1.Controls.Add(LoadControl("DanhSachDH.ascx"));
                    break;
                case "ThemDH":
                    PlaceHolder1.Controls.Add(LoadControl("ThemDonHang.ascx"));
                    break;
                case "XoaDH":
                    PlaceHolder1.Controls.Add(LoadControl("XoaDonHang.ascx"));
                    break;
            }
        }    
    }
}