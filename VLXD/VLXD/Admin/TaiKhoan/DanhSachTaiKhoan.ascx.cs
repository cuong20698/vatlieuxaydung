using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.Admin.TaiKhoan
{
    public partial class DanhSachTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDSTK();
        }

        private void loadDSTK() {
            TaiKhoanDAO tkDao = new TaiKhoanDAO();
            DataTable dt = tkDao.getTable("select *from NguoiDung WHERE HoatDong = 1");
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++) {
                sb.Append(@"
                <tr>
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["UserName"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Email"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["DiaChi"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["SDT"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["IDGroup"].ToString() + @"</td>
                    <td>
                        <a onClick='alert('cgfhhgfty');' href = '/TatHoatDong.aspx?ma=" + dt.Rows[i]["ID"].ToString() + @"'>Off</a>
                    </td>
                </tr>    
                "); 
            }
            lblTr.Text = sb.ToString();
        }
    }
}