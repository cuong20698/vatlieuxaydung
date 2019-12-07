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
            if (Session["username"] != null) {
                Response.Redirect("/TrangAdmin.aspx");
            }
        }

        private void SetCookie()
        {
            if (chkNhoMK.Checked)
            {
                HttpCookie c1 = new HttpCookie("username", txtUsername.Value);
                HttpCookie c2 = new HttpCookie("password", txtPassword.Value);
                DateTime d = DateTime.Now;
                TimeSpan ts = new TimeSpan(1, 1, 1, 1);//ngày-giờ-phút-giây
                c1.Expires = d.Add(ts);
                c2.Expires = d.Add(ts);
                Request.Cookies.Add(c1);
                Request.Cookies.Add(c2);
            }
        }

        private void login() {
            string username = txtUsername.Value.ToString();
            string password = txtPassword.Value.ToString();
            HttpCookie c1 = new HttpCookie("username");
            HttpCookie c2 = new HttpCookie("password");
            TaiKhoanDAO tkDao = new TaiKhoanDAO();
            if (tkDao.login(username, password))
            {
                Session.Add("username", username);
                SetCookie();
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