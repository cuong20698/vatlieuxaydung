using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD
{
    public partial class TrangBanHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDMSP();
            
        }
        private void loadDMSP() {
            DanhMucSPDAO dmDao = new DanhMucSPDAO();
            DataTable dt = dmDao.getTable();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++) {
                sb.Append(@"
                    <li class='level0'>
                        <a href='/TrangBanHang.aspx?modul=SanPham&modul1=DSLSP&ma="+dt.Rows[i]["ID"]+@"'>
                              <span>"+dt.Rows[i]["Name"]+ @"</span>
                        </a>
                    </li>
                ");
            }
            lblDMSP.Text = sb.ToString();
            
        }
    }
}