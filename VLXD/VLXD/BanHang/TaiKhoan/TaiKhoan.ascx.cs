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
            loadMenu();
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
                case "TTTK":
                    lblDM.Text = "Thông tin tài khoản";
                    PlaceHolder1.Controls.Add(LoadControl("ThongTinTaiKhoan.ascx"));
                    break;
                case "DX":
                    lblDM.Text = "";
                    PlaceHolder1.Controls.Add(LoadControl("DangXuat.ascx"));
                    break;
            }
        }

        private void loadMenu() {
            if(Session["KH"] == null)
            {
                lblMenu.Text = @"
                    <h3>
                        <span>Tài khoản</span>
                    </h3>
                    <ul>                    
                        <li><a href = '/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN'><i class='fa fa-sign-in'></i>Đăng nhập</a></li>
                        <li><a href = '/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DK'><i class='fa fa-key'></i>Đăng ký</a></li>
                        <li><a href = '/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=QuenMK'><i class='fa fa-key'></i>Quên mật khẩu</a></li>
                    </ul>";
            }

            if (Session["KH"] != null)
            {
                lblMenu.Text = @"
                     <h3>
                        <span>Quản lý cá nhân</span>
                    </h3>
                     <ul>
                        <li class='active'><a href = '/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=TTTK'><i class='glyphicon glyphicon-user'></i>Thông tin tài khoản</a></li>
                        <li><a href = '/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DH'><i class='glyphicon glyphicon-list-alt'></i>Đơn hàng của tôi</a></li>
                        <li><a href = '/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DoiMK'><i class='fa fa-key'></i>Thay đổi mật khẩu</a></li>
                        <li><a href = '/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DX'><i class='glyphicon glyphicon-log-out'></i>Đăng xuất</a></li>
                     </ul>";
            }
        }
    }
}