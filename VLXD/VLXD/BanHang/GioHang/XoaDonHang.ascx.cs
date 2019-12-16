using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD.BanHang.GioHang
{
    public partial class XoaDonHang : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            xoaDH();
        }

        private void xoaDH() {

            string ma = "";
            DataTable dt = (DataTable)Session["giohang"];

            if (Request.QueryString["ma"] != null) {
                ma = Request.QueryString["ma"];
            }

            if (Session["giohang"] != null)
            {
                for (int i = 0; i < dt.Rows.Count; i++) {
                    if (dt.Rows[i]["ID"].ToString() == ma) {
                        dt.Rows[i].Delete();
                       
                    }
                }
            }
            Session["giohang"] = dt;
            Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=GH&modul2=DSDH");
        }
    }
}