using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD.BanHang.TaiKhoan
{
    public partial class TaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadTrang();
        }
        private void loadTrang()
        {
            string modul2 = "";
            if (Request.QueryString["modul2"] != null)
            {
                modul2 = Request.QueryString["modul2"];
            }

            switch (modul2)
            {
                case "DN":
                    lblDM.Text = "Đăng nhập";
                    PlaceHolder1.Controls.Add(LoadControl("DangNhap.ascx"));
                    break;
                case "DK":
                    lblDM.Text = "Đăng ký";
                    PlaceHolder1.Controls.Add(LoadControl("DangKy.ascx"));
                    break;
                case "QuenMK":
                    lblDM.Text = "Quên mật khẩu";
                    PlaceHolder1.Controls.Add(LoadControl("QuenMK.ascx"));
                    break;
            }
        }
    }
}