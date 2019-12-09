using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
using System.Data;
using System.Data.SqlClient;
namespace VLXD.Admin.TaiKhoan
{
    public partial class ChiTietTaiKhoan : System.Web.UI.UserControl
    {
        TaiKhoanDAO DAO = new TaiKhoanDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                DataTable dt = DAO.getTable("SELECT * FROM NguoiDung WHERE UserName='" + Session["username"] + "'");
                if (dt.Rows.Count > 0)
                {
                    txtHoTen.Text = dt.Rows[0]["TenND"].ToString();
                    txtSDT.Text = dt.Rows[0]["SDT"].ToString();
                    txtDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
                    txtEmail.Text = dt.Rows[0]["Email"].ToString();
                }
            }
            else
            {
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            
            bool rs = DAO.update("UPDATE dbo.NguoiDung SET TenND=N'"+txtHoTen.Text+"', Email ='" + txtEmail.Text + "',SDT ='" +txtSDT.Text+ "',DIACHI =N'" + txtDiaChi.Text+ "'  WHERE UserName = '" + Session["username"] + "'");
        
            if (rs == true)
            {
                Response.Write("<script>alert('Cập nhật thông tin tài khoản thành công!!');</script>");
            }
        }


        
    }
}