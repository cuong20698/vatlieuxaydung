using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD
{
    public partial class TrangAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           checkSession();
            loadLink1();
            loadLink2();
        }

        private void loadLink1() {
            string modul = "";
            if (Request.QueryString["modul"] != null)
            {
                modul = Request.QueryString["modul"];
            }
           
            switch (modul) {
                case "TaiKhoan":
                    lblLink.Text = "Tài khoản";
                    break;
                case "SanPham":
                    lblLink.Text = "Sản phẩm";
                    break;
                case "KhachHang":
                    lblLink.Text = "Khách hàng";
                    break;
            };
        }

        private void loadLink2()
        {
            string modul1 = "";
            if (Request.QueryString["modul1"] != null)
            {
                modul1 = Request.QueryString["modul1"];
            }
            switch (modul1)
            {
                case "TK":
                    lblLink2.Text = "Chỉnh sửa thông tin cá nhân";
                    break;
                case "DSTK":
                    lblLink2.Text = "Danh sách tài khoản";
                    break;
                case "DoiMK":
                    lblLink2.Text = "Đổi mật khẩu";
                    break;
                case "ThemLoaiSP":
                    lblLink2.Text = "Thêm loại sản phẩm";
                    break;
                case "DMSP":
                    lblLink2.Text = "Danh sách loại sản phẩm";
                    break;
                case "TKKHD":
                    lblLink2.Text = "Tài khoản không hoạt động";
                    break;
                case "DSSP":
                    lblLink2.Text = "Danh sách sản phẩm";
                    break;
                case "NKSP":
                    lblLink2.Text = "Nhật kí sản phẩm";
                    break;
                case "ThemSP":
                    lblLink2.Text = "Thêm sản phẩm";
                    break;
                case "DSKH":
                    lblLink2.Text = "Danh sách khách hàng";
                    break;
                case "DSDH":
                    lblLink2.Text = "Danh sách đơn hàng";
                    break;
            };
        }

        private void checkSession() {
            if (Session["username"] == null) {
                Response.Redirect("Login.aspx");
            }
        }

        
    }
}