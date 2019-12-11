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
    public partial class DanhSachDH : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            loadDSDH();
        }
        private void loadDSDH()
        {
            DonHangDAO dhDao = new DonHangDAO();
            DataTable dt = dhDao.getTable();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append(@"
                <tr>
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["MaKH"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["ThanhTien"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["TrangThai"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["NgayLap"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["NgayGiao"].ToString() + @"</td>
                    <td>
                        <a onClick='alert('cgfhhgfty');' href = 'TrangAdmin.aspx?modul=KhachHang&modul1=CTDH&MaDH=" + dt.Rows[i]["ID"].ToString() + @"'>Chi tiết</a> | 
                        <a href = 'GiaoHang.aspx?Ma=" + dt.Rows[i]["ID"].ToString() + @"'>Giao</a>
                    </td>
                </tr>    
                ");
            }
            lblTr.Text = sb.ToString();
        }
    }
}