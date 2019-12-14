using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD.BanHang
{
    public partial class BanHangUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string modul1 = "";
            if (Request.QueryString["modul1"] != null) {
                modul1 = Request.QueryString["modul1"];
            }
            load(modul1);
        }

        private void load(string modul1) {
            switch (modul1)
            {
                case "TrangChu":
                    PlaceHolder1.Controls.Add(LoadControl("TrangChu.ascx"));
                    break;
                case "DSSP":
                    PlaceHolder1.Controls.Add(LoadControl("SanPham/DanhSachSanPham.ascx"));
                    break;
            }
        }
    }
}