using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
namespace VLXD
{
    public partial class GiaoHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ma = "";
            if (Request.QueryString["Ma"] != null)
            {
                ma = Request.QueryString["Ma"];
            }
            giaoHang(ma);
        }
        private void giaoHang(string ma)
        {
            string query = " Update DonHang set TrangThai = 1, NgayGiao = '" + DateTime.Now + "' where id = '" + ma + "'";
            DonHangDAO dh = new DonHangDAO();
            if (dh.update(query))
            {
                Response.Redirect("TrangAdmin.aspx?modul=KhachHang&modul1=DSDH");
            }
        }
    }
}