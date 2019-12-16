using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.BanHang.GioHang
{
    public partial class ThemDonHang : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            themDH();
        }

        private void themDH()
        {
            SanPhamDAO spDao = new SanPhamDAO();
            string query = "Select * from SanPham where ID =" + Request.QueryString["ma"] + " and HoatDong=1";
            DataTable dt = spDao.getTableSP(query);
            int soLuong = 1;
            double gia = double.Parse(dt.Rows[0]["GiaKhuyenMai"].ToString()) ;
            if (double.Parse(dt.Rows[0]["GiaKhuyenMai"].ToString()) == 0)
            {
                 gia = double.Parse(dt.Rows[0]["Gia"].ToString());
            }
            double thanhTien = gia * soLuong;
            DataTable giohang = (DataTable)Session["giohang"];
            bool kt = false;
            if (Session["giohang"] != null)
            {
                for (int i = 0; i < giohang.Rows.Count; i++) {
                    if (giohang.Rows[i]["ID"].ToString() == Request.QueryString["ma"]) {
                        kt = true;
                        giohang.Rows[i]["SoLuong"] = int.Parse(giohang.Rows[i]["SoLuong"].ToString()) + 1;
                        giohang.Rows[i]["ThanhTien"] = double.Parse(giohang.Rows[i]["DonGia"].ToString()) * int.Parse(giohang.Rows[i]["SoLuong"].ToString());
                    }
                }
                if (!kt)
                {
                    DataRow dr = giohang.NewRow();
                    dr["ID"] = dt.Rows[0]["ID"].ToString();
                    dr["TenSP"] = dt.Rows[0]["TenSP"].ToString();
                    dr["HinhAnh"] = dt.Rows[0]["HinhAnh"].ToString();
                    dr["SoLuong"] = soLuong;
                    dr["DonGia"] = gia;
                    dr["DVT"] = dt.Rows[0]["DVT"].ToString();
                    dr["ThanhTien"] = thanhTien;
                    giohang.Rows.Add(dr);
                }
            }
            Session["giohang"] = giohang;
            Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=GH&modul2=DSDH");
        }   
    }
}