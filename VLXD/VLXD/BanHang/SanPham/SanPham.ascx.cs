using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.BanHang.SanPham
{
    public partial class SanPham : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDMSP();
        }
        private void loadDMSP()
        {
            DanhMucSPDAO dmDao = new DanhMucSPDAO();
            DataTable dt = dmDao.getTable();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append(@"
                    <li class='level0'>
                        <a href='/TrangBanHang.aspx?modul=SanPham&modul1=DSLSP&ma=" + dt.Rows[i]["ID"] + @"'>
                              <i class='fa fa-arrow-circle-right'></i><span>" + dt.Rows[i]["Name"] + @"</span>
                        </a>
                    </li>
                ");
            }
            lblDMSP.Text = sb.ToString();

        }
    }
}