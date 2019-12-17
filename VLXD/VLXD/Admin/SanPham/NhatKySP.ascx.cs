using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
using System.Data;
using System.Text;
namespace VLXD.Admin.SanPham
{
    public partial class NhatKySP : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadSP();
        }
        private void loadSP()
        {
            SanPhamDAO tkDao = new SanPhamDAO();
            DataTable dt = tkDao.getTable1("select * from SanPham where HoatDong=0");
            StringBuilder sb = new StringBuilder();
          /*  for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append(@"
                <tr>
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["TenSP"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Gia"].ToString() + @"</td>
                    <td style='background-color:#ffffff; text-align:center;'><img src='../../../pic/" + dt.Rows[i]["HinhAnh"] + @"' style='width: 100px; height: auto'/></td>
                    <td>" + dt.Rows[i]["SPNoiBat"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Mota"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["LoaiSP"].ToString() + @"</td>
                    <td>
                        <a href = '/TatHoatDong.aspx?MaSPPH=" + dt.Rows[i]["ID"].ToString() + @"'>Phục hồi</a>
                    </td>
                </tr>    
                ");
            }
            lblTr.Text = sb.ToString();*/
            int kt = (int)Session["idgroup"];
            if (kt == 1)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    sb.Append(@"
                <tr>
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["TenSP"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Gia"].ToString() + @"</td>
                    <td style='background-color:#ffffff; text-align:center;'><img src='../../../pic/" + dt.Rows[i]["HinhAnh"] + @"' style='width: 100px; height: auto'/></td>
                    <td>" + dt.Rows[i]["SPNoiBat"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Mota"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["LoaiSP"].ToString() + @"</td>
                    <td>
                        <a href = '/TatHoatDong.aspx?MaSPPH=" + dt.Rows[i]["ID"].ToString() + @"'>Phục hồi</a>
                    </td>
                </tr>    
                ");
                }
                
            }
            else
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    sb.Append(@"
                <tr>
                    <td>" + dt.Rows[i]["ID"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["TenSP"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Gia"].ToString() + @"</td>
                    <td style='background-color:#ffffff; text-align:center;'><img src='../../../pic/" + dt.Rows[i]["HinhAnh"] + @"' style='width: 100px; height: auto'/></td>
                    <td>" + dt.Rows[i]["SPNoiBat"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["Mota"].ToString() + @"</td>
                    <td>" + dt.Rows[i]["LoaiSP"].ToString() + @"</td>
                    <td>
                        <a onclick='return Xoa();' href = '#'>Phục hồi</a>
                    </td>
                </tr>    
                ");
                }
            }
            lblTr.Text = sb.ToString();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("/TrangAdmin.aspx?modul=SanPham&modul1=ThemSP");
        }
    }
}