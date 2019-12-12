using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
using VLXD.Entity;

namespace VLXD.Admin.SanPham
{
    public partial class DanhSachLoai : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDSTK();
        }

        private void loadDSTK()
        {
            DanhMucSPDAO tkDao = new DanhMucSPDAO();
            DataTable dt = tkDao.getTable();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append(@"
                <tr>
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Name"].ToString() + @"</td>
                    <td>
                        <a onClick='alert('cgfhhgfty');' href = '/TatHoatDong.aspx?MaLoaiSP=" + dt.Rows[i]["ID"].ToString() + @"'>Xóa</a>
                        <a href = 'SuaSP.aspx?MaSP=" + dt.Rows[i]["ID"].ToString() + @"'>Sửa</a>
                    </td>
                </tr>    
                ");
            }
            lblTr.Text = sb.ToString();
        }
        private DanhMucSP getData() {
            string name = txtTenLoai.Value;
            return new DanhMucSP(name);
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            DanhMucSPDAO tkDao = new DanhMucSPDAO();
            if (tkDao.insert(getData())) {
                Response.Redirect("TrangAdmin.aspx?modul=SanPham&modul1=DMSP");
            }
        }
    }
}