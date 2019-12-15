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
    public partial class DanhSachSanPhamLoai : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDS();
        }

        private void loadDS()
        {
            string giaKM = "";
            string query = "SELECT * FROM SanPham,DanhMucSP WHERE SanPham.LoaiSP = DanhMucSP.Name and DanhMucSP.ID = " + Request.QueryString["ma"] + "";
            SanPhamDAO spDao = new SanPhamDAO();
            DataTable dt = spDao.getTableSP(query);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                int km = Int32.Parse(dt.Rows[i]["GiaKhuyenMai"].ToString());
                if (km != 0)
                {
                    giaKM = "<span class='price product-price'>" + dt.Rows[i]["GiaKhuyenMai"] + @"₫ /" + dt.Rows[i]["DVT"] + @"</span>
                             <span class='price old-price'>" + dt.Rows[i]["Gia"] + @"₫</span>";
                }

                else
                {
                    giaKM = "<span class='price product-price'>" + dt.Rows[i]["Gia"] + @"₫ /" + dt.Rows[i]["DVT"] + @"</span>";
                }
                sb.Append(@"
                    <li class='col-md-3 col-sm-6 col-xs-12'>
                                <div class='product-container product-resize fixheight' style='height: 298px;'>
                                    <div class='left-block image-resize' style='height: 221px;'>
                                        <a href = '/TrangBanHang.aspx?modul=SanPham&modul1=CTSP&ma=" + dt.Rows[i]["ID"] + @"'>
                                            <img class='img-responsive' style='width:400px; height=300px;' alt='product' src='../pic/" + dt.Rows[i]["HinhAnh"] + @"'></a>
                                        <div class='quick-view'>
                                            <a title = 'Add to my wishlist' class='heart' href='#'></a>
                                            <a title = 'Xem chi tiết' class='compare' href='/TrangBanHang.aspx?modul=SanPham&modul1=CTSP&ma=" + dt.Rows[i]["ID"] + @"'></a>
                                            <a class='qv-e-button btn-quickview-1 search' title='Xem nhanh' href='#'></a>
                                        </div>
                                        <div class='add-to-cart'>
                                            <a class='add-to-car' href='/TrangBanHang.aspx?modul=TrangChu&modul1=GH&ma=" + dt.Rows[i]["ID"] + @"'>Thêm vào giỏ</a>
                                        </div>
                                    </div>
                                    <div class='right-block'>
                                        <h5 class='product-name'><a href = '/TrangBanHang.aspx?modul=SanPham&modul1=CTSP&ma=" + dt.Rows[i]["ID"] + @"'>" + dt.Rows[i]["TenSP"] + @"</a></h5>
                                        <div class='content_price'>
                                            " + giaKM + @"
                                        </div>
                                    </div>
                                </div>
                            </li>
            ");
            }

            lblTenLoai1.Text = dt.Rows[0]["Name"].ToString();
            lblTenLoai2.Text = dt.Rows[0]["Name"].ToString();
            lblDSSP.Text = sb.ToString();
        }
    }
}