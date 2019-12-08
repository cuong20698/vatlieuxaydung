using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.Admin.SanPham
{
    public partial class DanhSachSanPham : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void loadSP() {
            SanPhamDAO tkDao = new SanPhamDAO();
            DataTable dt = tkDao.getTable();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append(@"
                <tr>
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["TenSP"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Gia"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["HinhAnh"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["SPNoiBat"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Mota"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["LoaiSP"].ToString() + @"</td>
                    <td>
                        <a onClick='alert('cgfhhgfty');' href = '?MaSP=" + dt.Rows[i]["ID"].ToString() + @"'>Xóa</a>
                        <a href = 'SuaSP.aspx?MaSP=" + dt.Rows[i]["ID"].ToString() + @"'>Sửa</a>
                    </td>
                </tr>    
                ");
            }
            lblTr.Text = sb.ToString();
        }
    }
}