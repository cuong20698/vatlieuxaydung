using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.Admin.TaiKhoan
{
    public partial class TatHoatDong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ma = "";
            if (Request.QueryString["ma"] != null)
            {
                ma = Request.QueryString["ma"];
            }
            tatHoatDong(ma);
        }

        private void tatHoatDong(string ma) {
            string query = "UPDATE NguoiDung SET HoatDong = 0 WHERE ID = '"+ma+"'";
            TaiKhoanDAO tkDao = new TaiKhoanDAO();
            if (tkDao.update(query))
            {
                Response.Redirect("TrangAdmin.aspx?modul=TaiKhoan&modul1=DSTK");
            }
        }
    }
}