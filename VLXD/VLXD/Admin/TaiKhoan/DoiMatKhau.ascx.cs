using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
using System.Data;
namespace VLXD.Admin.TaiKhoan
{
    public partial class DoiMatKhau : System.Web.UI.UserControl
    {
        TaiKhoanDAO DAO = new TaiKhoanDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnXacNhan_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                DataTable dt = DAO.getTable("SELECT * FROM dbo.NguoiDung WHERE UserName ='" + Session["username"] + "'");
                if (txtMatKhauMoi.Text == txtMatKhauMoi2.Text)
                {
                    if (txtMatKhauCu.Text == dt.Rows[0]["Password"].ToString())
                    {
                        bool rs = DAO.update("UPDATE dbo.NguoiDung SET  Password ='" + txtMatKhauMoi.Text + "' WHERE UserName = '" + Session["username"] + "'");
                        if (rs == true)
                        {
                            Response.Write("<script>alert('Đổi mật khẩu thành công!!');</script>");
                        }
                    }
                    else { Response.Write("<script>alert('Mật khẩu không đúng!!');</script>"); }
                }
                else
                {
                    Response.Write("<script>alert('Mật khẩu không khớp!!');</script>");
                }
            }
        }
    }
}