using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.BanHang.TaiKhoan
{
    public partial class ThongTinTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["KH"] == null)
            {
                Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN");
            }
            load();
        }

        private void load()
        {
            string query = "SELECT * FROM KhachHang WHERE Username = '" + Session["KH"].ToString() + "' and HoatDong = 1";
            KhachHangDAO khDao = new KhachHangDAO();
            DataTable dt = khDao.getTable(query);
            lblNguoiNhan.Text = dt.Rows[0]["TenKH"].ToString();
            lblSDT.Text = dt.Rows[0]["SDT"].ToString();
            lblEmail.Text = dt.Rows[0]["Email"].ToString();
            lblDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
            

        }
    }
}