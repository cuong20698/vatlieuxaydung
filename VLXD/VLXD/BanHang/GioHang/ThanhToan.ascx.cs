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

namespace VLXD.BanHang.GioHang
{
    public partial class ThanhToan : System.Web.UI.UserControl
    {

        private DonHang dh = new DonHang();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt;
            if (Session["KH"] == null)
            {
                Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN");
            }
            if (Session["giohang"] != null)
            {
                dt = (DataTable)Session["giohang"];
                if (dt.Rows.Count != 0)
                {
                    loadLink();
                    loadTTThanhToan();
                    loadSP();
                }
                else
                {
                    Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=GH&modul2=DSDH");
                }
            }
        }

        private void loadTTThanhToan()
        {
            string query = "SELECT * FROM KhachHang WHERE Username = '" + Session["KH"].ToString() + "' and HoatDong = 1";
            KhachHangDAO khDao = new KhachHangDAO();
            DataTable dt = khDao.getTable(query);
            lblNguoiNhan.Text = dt.Rows[0]["TenKH"].ToString();
            lblSDT.Text = dt.Rows[0]["SDT"].ToString();
            lblEmail.Text = dt.Rows[0]["Email"].ToString();
            lblDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
            dh.maKH = long.Parse( dt.Rows[0]["ID"].ToString());
            
        }

        private void loadSP()
        {
            double thanhtien = 0;
            double vanchuyen = 0;
            int vch = int.Parse(ddlVanChuyen.SelectedValue.ToString());
            if (vch == 1)
            {
                vanchuyen = 30000;
            }
            DataTable dt = (DataTable)Session["giohang"];
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append(@"
                        <div class='cart-items'>
                            <div class='cart-item clearfix ng-scope'>
                                <span class='image pull-left' style='margin-right:10px;'>
                                    <a href = '#'>
                                        <img src='../pic/" + dt.Rows[i]["HinhAnh"] + @"' class='img-responsive'>
                                    </a>
                                </span>
                                <div class='product-info pull-left'>
                                    <span class='product-name'>
                                        <a href = '#' class='ng-binding'>" + dt.Rows[i]["TenSP"] + @"</a> x<span class='ng-binding'>" + dt.Rows[i]["SoLuong"] + @"</span>
                                    </span>
                                </div>
                                <span class='price ng-binding'>" + dt.Rows[i]["ThanhTien"] + @" ₫</span>
                           </div>
                        </div>
                ");
                thanhtien += double.Parse(dt.Rows[i]["ThanhTien"].ToString());
            }
            double thanhtoan = thanhtien + vanchuyen;
            lblSP.Text = sb.ToString();
            lblThanhTien.Text = thanhtien.ToString();
            lblPhiVanChuyen.Text = vanchuyen.ToString();
            lblThanhToan.Text = thanhtoan.ToString();
        }

        private void loadLink()
        {
            string modul = "";
            string modul1 = "";
            if (Request.QueryString["modul"] != null && Request.QueryString["modul1"] != null)
            {
                modul = Request.QueryString["modul"];
                modul1 = Request.QueryString["modul1"];
            }
            if (modul.Equals("TrangChu"))
            {
                lblH1.Text = "Trang chủ";
            }
            if (modul1.Equals("ThanhToan"))
            {
                lblH2.Text = "Thanh toán";
            }
        }

        protected void btnDH_Click(object sender, EventArgs e)
        {
            DonHangDAO dhDao = new DonHangDAO();
            ChiTietDonHang ctdh = new ChiTietDonHang();
            DataTable dt = (DataTable)Session["giohang"];
            themDH();
            for (int i = 0; i <dt.Rows.Count; i++)
            {
                ctdh.tenSP = dt.Rows[i]["TenSP"].ToString();
                ctdh.hinhAnh = dt.Rows[i]["HinhAnh"].ToString();
                ctdh.soLuong = int.Parse(dt.Rows[i]["SoLuong"].ToString());
                ctdh.donGia = double.Parse(dt.Rows[i]["DonGia"].ToString());
                ctdh.thanhTien = double.Parse(dt.Rows[i]["ThanhTien"].ToString());
                ctdh.maDH = dh.maDH;
                try
                {
                    dhDao.insertCTDH(ctdh);
                }
                catch (NullReferenceException ex) { }
                
            }
            
            Response.Redirect("TrangBanHang.aspx?modul=TrangChu&modul1=HoanTat");
        }

        private void themDH() {
            Random random = new Random();
            dh.maDH = random.Next(1000);
            dh.thanhTien = double.Parse(lblThanhToan.Text.ToString());
            dh.ngayLap = DateTime.Now;
            dh.trangThai = false;
            dh.ngayGiao = new DateTime();
            DonHangDAO dhDao = new DonHangDAO();
            if (!dhDao.insertDH(dh))
            {
                Response.Write("<script>alert('Thêm đơn hàng không thành công');</script>");
            }
        }
    }
}