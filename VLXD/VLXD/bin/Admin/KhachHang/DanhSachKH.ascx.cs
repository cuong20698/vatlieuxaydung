using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.Admin.KhachHang
{
    public partial class DanhSachKH : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDSKH();
        }
        private void loadDSKH()
        {
            SanPhamDAO tkDao = new SanPhamDAO();
            DataTable dt = tkDao.getTable1("select *from KhachHang");
            StringBuilder sb = new StringBuilder();
            string off = "";
           /* int kt = (int)Session["idgroup"];
            if (kt == 1)
            {
                off = "<a onclick='return Xoa();' href = '/TatHoatDong.aspx?ma=" + dt.Rows[0]["ID"].ToString() + @"'>Off</a>";
            }*/
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append(@"
                <tr> 
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["UserName"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["TenKH"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["GhiChu"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Email"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["SDT"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["DiaChi"].ToString() + @"</td>
                    <td>
                       " + off + @" 
                    </td>
                </tr>    
                ");
            }
            lblTr.Text = sb.ToString();
        }
    }
}