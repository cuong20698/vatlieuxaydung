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
    public partial class ChiTietDH : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadCTDH();
        }
        private void loadCTDH()
        {
            string id = Request.QueryString["MaDH"].ToString();
            DonHangDAO dhDao = new DonHangDAO();
            DataTable dt = dhDao.getDetail(Convert.ToInt32(id));
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append(@"
                <tr>
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["TenSP"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["SoLuong"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["DonGia"].ToString() + @"</td>
                    <td>" + (Convert.ToInt32(dt.Rows[i]["DonGia"].ToString()) * Convert.ToInt32(dt.Rows[i]["SoLuong"].ToString())) + @"</td>
                </tr>    
                ");
            }
            lblTr.Text = sb.ToString();
        }
    }
}