using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD.BanHang.GioHang
{
    public partial class DanhSachDH : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDH();
            tinhTongTT();
        }

        private void loadDH()
        {
            StringBuilder sb = new StringBuilder();
            if (Session["giohang"] != null)
            {
                DataTable dt = (DataTable)Session["giohang"];
                for (int i = 0; i <dt.Rows.Count; i++)
                {
                    sb.Append(@"
                        <tr class='ng-scope'>
                            <td style='width:20%; margin:0px; padding:0px;'>
                                <img style='width:30%; padding:5px; margin-left:90px;' src='../pic/" + dt.Rows[i]["HinhAnh"]+ @"'>
                            </td>
                            <td class='des'>" + dt.Rows[i]["TenSP"] + @"</td>
                            <td class='price ng-binding'>" + dt.Rows[i]["DonGia"] + "đ /"+dt.Rows[i]["DVT"]+@"</td>
                            <td class='quantity' style='width:120px'>" + dt.Rows[i]["SoLuong"] + @"</td>
                            <td class='amount ng-binding'>" + dt.Rows[i]["ThanhTien"] + @"đ</td>
                            <td>
                                <a href='TrangBanHang.aspx?modul=TrangChu&modul1=GH&modul2=XoaDH&ma="+dt.Rows[i]["ID"]+@"'>
                                    <i class='glyphicon glyphicon-trash'></i>
                                </a>
                            </td>
                        </tr>
                     ");
                }
            }
            lblDH.Text = sb.ToString();
        }

        private void tinhTongTT() {
            double tt = 0;
            if (Session["giohang"] != null) {
                DataTable dt = (DataTable)Session["giohang"];
                for(int i = 0; i<dt.Rows.Count; i++)
                {
                    tt += double.Parse(dt.Rows[i]["ThanhTien"].ToString());
                }
            }
            lblTongTT.Text = tt + "đ";
        }
    }
}