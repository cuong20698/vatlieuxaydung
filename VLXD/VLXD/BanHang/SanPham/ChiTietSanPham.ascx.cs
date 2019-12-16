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
        private string hinhAnh = "";
        private string Gia ="";
        private string Dvt = "";
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
            hinhAnh = dt.Rows[0]["HinhAnh"].ToString();
            string giaKM = "";
            int km = Int32.Parse(dt.Rows[0]["GiaKhuyenMai"].ToString());
            Dvt = dt.Rows[0]["DVT"].ToString();
            if (km != 0)
            {
                giaKM = "<span class='price-new'>" + dt.Rows[0]["GiaKhuyenMai"] + @"₫ /" + dt.Rows[0]["DVT"] + @"</span>
                             <span class='price-old'>" + dt.Rows[0]["Gia"] + @"₫</span>";
                Gia = dt.Rows[0]["GiaKhuyenMai"].ToString();
            }

            else
            {
                giaKM = "<span class='price-new'>" + dt.Rows[0]["Gia"] + @"₫ /" + dt.Rows[0]["DVT"] + @"</span>";
                Gia = dt.Rows[0]["Gia"].ToString();
            }
            lblGia.Text = giaKM;
        }

        

        protected void btnThemGH_Click(object sender, EventArgs e)
        {
            string id = lblMa.Text;
            string tenSP = lblTenSP.Text;
            string hinhanh = hinhAnh;
            int soLuong = int.Parse(txtSL.Value);
            double gia = double.Parse(Gia);
            string dvt = Dvt;
            double thanhTien = gia * soLuong;
            DataTable dt = (DataTable)Session["giohang"];
            bool kt = false;
            if (Session["giohang"] != null)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["ID"].ToString() == id)
                    {
                        kt = true;
                        dt.Rows[i]["SoLuong"] = int.Parse(dt.Rows[i]["SoLuong"].ToString()) + soLuong;
                        dt.Rows[i]["ThanhTien"] = double.Parse(dt.Rows[i]["DonGia"].ToString()) * int.Parse(dt.Rows[i]["SoLuong"].ToString());
                    }
                }
                if (!kt)
                {
                    DataRow dr = dt.NewRow();
                    dr["ID"] = id;
                    dr["TenSP"] = tenSP;
                    dr["HinhAnh"] = hinhanh;
                    dr["SoLuong"] = soLuong;
                    dr["DonGia"] = gia;
                    dr["DVT"] = dvt;
                    dr["ThanhTien"] = thanhTien;
                    dt.Rows.Add(dr);
                }
            }
            Session["giohang"] = dt;
            Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=GH&modul2=DSDH");
        }
    }
}