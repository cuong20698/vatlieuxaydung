using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD.Admin
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string modul1 = "";
            if (Request.QueryString["modul1"] != null) {
                modul1 = Request.QueryString["modul1"];
            }
            loadTrang(modul1);
        }

        private void loadTrang(string modul) {
            switch (modul) {
                case "DSTK":
                    PlaceHolder1.Controls.Add(LoadControl("TaiKhoan/DanhSachTaiKhoan.ascx"));
                    break;
            }
        }
    }
}