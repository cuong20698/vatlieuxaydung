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

        private void loadTrang(string modul1) {
            switch (modul1) {
                case "TK":
                    PlaceHolder1.Controls.Add(LoadControl("TaiKhoan/ChiTietTaiKhoan.ascx"));
                    break;
                case "DSTK":
                    PlaceHolder1.Controls.Add(LoadControl("TaiKhoan/DanhSachTaiKhoan.ascx"));
                    break;
                case "DoiMK":
                    PlaceHolder1.Controls.Add(LoadControl("TaiKhoan/DoiMatKhau.ascx"));
                    break;
                case "DMSP":
                    PlaceHolder1.Controls.Add(LoadControl("SanPham/DanhSachLoai.ascx"));
                    break;
                case "DSSP":
                    PlaceHolder1.Controls.Add(LoadControl("SanPham/DanhSachSanPham.ascx"));
                    break;
                case "ThemSP":
                    PlaceHolder1.Controls.Add(LoadControl("SanPham/ThemSP.ascx"));
                    break;
                case "SuaSP":
                    PlaceHolder1.Controls.Add(LoadControl("SanPham/SuaSP.ascx"));
                    break;
                case "DSKH":
                    PlaceHolder1.Controls.Add(LoadControl("KhachHang/DanhSachKH.ascx"));
                    break;
                case "DSDH":
                    PlaceHolder1.Controls.Add(LoadControl("KhachHang/DanhSachDH.ascx"));
                    break;
                case "CTDH":
                    PlaceHolder1.Controls.Add(LoadControl("KhachHang/ChiTietDH.ascx"));
                    break;
            }
        }
    }
}