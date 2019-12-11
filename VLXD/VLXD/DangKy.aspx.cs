using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
using VLXD.Entity;

namespace VLXD
{
    public partial class DangKy : System.Web.UI.Page
    {
        TaiKhoanDAO tkDao = new TaiKhoanDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public NguoiDung getNguoiDung() {
            string hodem = txtFirstName.Value;
            string ten = txtLastName.Value;
            string username = txtUsername.Value;
            string password = txtPassword.Value;
            string cpassword = txtConfirmPassword.Value;
            string hoten = hodem + " " + ten;
            string diaChi = txtDiaChi.Value;
            string email = txtEmail.Value;
            string sdt = txtSDT.Value;
            NguoiDung nd = new NguoiDung(username, password, hoten, email, diaChi, sdt, 0,true);
            return nd;
        }
        public void dangKy()
        {
            if (Session["username"] == null)
            {
                if (getNguoiDung().passWord == txtConfirmPassword.Value)
                {
                    if (!tkDao.checkUser(getNguoiDung().userName))
                    {
                        if (tkDao.insert(getNguoiDung()))
                        {
                            Session.Add("username", getNguoiDung().userName);
                            Response.Redirect("/TrangAdmin.aspx");
                        }
                    }
                    else
                    {
                        lblTB.Text = @"<script>alert('Tên đăng nhập đã tồn tại!');</script>";
                    }
                }
                else
                {
                    lblTB.Text = @"<script>alert('Nhập mật khẩu không khớp!');</script>";
                }
            }
            else
            {
                if (getNguoiDung().passWord == txtConfirmPassword.Value)
                {
                    if (!tkDao.checkUser(getNguoiDung().userName))
                    {
                        if (tkDao.insert(getNguoiDung()))
                        {
                            lblTB.Text = @"<script>alert('Đăng ký tài khoản thành công!');</script>";
                        }
                    }
                    else
                    {
                        lblTB.Text = @"<script>alert('Tên đăng nhập đã tồn tại!');</script>";
                    }
                }
                else
                {
                    lblTB.Text = @"<script>alert('Nhập mật khẩu không khớp!');</script>";
                }
            }
        }
        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            dangKy();
        }
    }
}