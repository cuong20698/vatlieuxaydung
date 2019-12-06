using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void login() {
            string username = txtUsername.Value.ToString();
            string password = txtPassword.Value.ToString();
            TaiKhoanDAO tkDao = new TaiKhoanDAO();
            if (tkDao.login(username, password))
            {
                Session.Add("username", username);
                Response.Redirect("/TrangAdmin.aspx");
            }
            else {
                lblTB.Text = @"<script>alert('Tên đăng nhập hoặc tài khoản không chính xác');</script>";
            }
        }

        protected void btnDangNhap_Click1(object sender, EventArgs e)
        {
            login();
        }
    }
}