using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
using VLXD.Entity;

namespace VLXD.BanHang.TaiKhoan
{
    public partial class DangNhap : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null) {
                Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=TTTK");
            }
        }

        protected void btnDN_Click1(object sender, EventArgs e)
        {
            string username = txtTK.Value;
            string pass = txtMK.Value;
         
            KhachHangDAO khDao = new KhachHangDAO();
     
            if (khDao.login(username, pass))
            {
               
                Session["KH"] = username;
           
                Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=TTTK");
            }
            else
            {
                lblTB.Text = @"<div class='alert alert-d anger fade in ng-scope'>
                                    <i class='fa-fw fa fa-times'></i>
                                    <strong>Error!</strong>
                                    <span class='ng-binding'>Tài khoản hoặc mật khẩu không chính xác.<br></span>
                                </div>";
            }
}
    }
}