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
    public partial class ChiTietSanPham : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadChiTietSP();
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
                        <a href='/TrangBanHang.aspx?modul=SanPham&modul1=SP&modul2=DSSPL&ma=" + dt.Rows[i]["ID"] + @"'>
                              <i class='fa fa-arrow-circle-right'></i><span>" + dt.Rows[i]["Name"] + @"</span>
                        </a>
                    </li>
                ");
            }
            lblDMSP.Text = sb.ToString();

        }
        private void loadChiTietSP() {
            string query = "SELECT * FROM SanPham WHERE ID = "+Request.QueryString["ma"]+" and HoatDong = 1";
            SanPhamDAO spDao = new SanPhamDAO();
            DataTable dt = spDao.getTableSP(query);
            lblTenSP.Text = dt.Rows[0]["TenSP"].ToString();
            lblTenSP1.Text = dt.Rows[0]["TenSP"].ToString();
            lblMa.Text = dt.Rows[0]["ID"].ToString();
            lblMota.Text = dt.Rows[0]["Mota"].ToString();
            lblHinh.Text = "<img src='../pic/"+dt.Rows[0]["HinhAnh"]+"'>";
            string giaKM = "";
            int km = Int32.Parse(dt.Rows[0]["GiaKhuyenMai"].ToString());
            if (km != 0)
            {
                giaKM = "<span class='price-new'>" + dt.Rows[0]["GiaKhuyenMai"] + @"₫ /" + dt.Rows[0]["DVT"] + @"</span>
                             <span class='price-old'>" + dt.Rows[0]["Gia"] + @"₫</span>";
            }

            else
            {
                giaKM = "<span class='price-new'>" + dt.Rows[0]["Gia"] + @"₫ /" + dt.Rows[0]["DVT"] + @"</span>";
            }
            lblGia.Text = giaKM;
        }

    }
}