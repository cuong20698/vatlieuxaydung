using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.BanHang.TaiKhoan
{
    public partial class DangNhap : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=CTTK");
            }
        }

        protected void btnDN_Click(object sender, EventArgs e)
        {
            string username = txtTK.Value;
            string pass = txtMK.Value;
            KhachHangDAO khDao = new KhachHangDAO();
            if (khDao.login(username, pass))
            {
                Session["username"] = username;
                Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=CTTK");
            }
        }

       
    }
}