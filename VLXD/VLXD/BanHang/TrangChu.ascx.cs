using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD.BanHang
{
    public partial class TrangChu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDSNB();
        }
        private void loadDSNB()
        {
            SanPhamDAO spDao = new SanPhamDAO();
            string query = "SELECT * FROM SanPham WHERE HoatDong = 1 and SPNoiBat = 1";
            DataTable dt = spDao.getTableSP(query);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string giaKM = "";
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
                    <li class='listKM'>
                                <div class='owl-item active'>
                                        <div class='left-block>
                                        <a href = '/TrangBanHang.aspx?modul=SanPham&modul1=CTSP&ma=" + dt.Rows[i]["ID"] + @"'>
                                            <img class='img-responsive' style='width:400px; height=300px;' alt='product' src='../pic/" + dt.Rows[i]["HinhAnh"] + @"'></a>
                                        <div class='quick-view'>
                                            <a title = 'Add to my wishlist' class='heart' href='#'></a>
                                            <a title = 'Xem chi tiết' class='compare' href='/TrangBanHang.aspx?modul=SanPham&modul1=CTSP&ma=" + dt.Rows[i]["ID"] + @"'></a>
                                            <a class='qv-e-button btn-quickview-1 search' title='Xem nhanh' href='#'></a>
                                        </div>
                                        <div class='add-to-cart'>
                                            <a class='add-to-car' href='/TrangBanHang.aspx?modul=TrangChu&modul1=GH&modul2=ThemDH&ma=" + dt.Rows[i]["ID"] + @"'>Thêm vào giỏ</a>
                                        </div>
                                    </div>
                                        </div>
                                        <div class='right-block'>
                                            <h5 class='product-name'><a href = '/TrangBanHang.aspx?modul=SanPham&modul1=CTSP&ma=" + dt.Rows[i]["ID"] + @"'>" + dt.Rows[i]["TenSP"] + @"</a></h5>  
                                            <div class='content_price ng-scope'>
                                                " + giaKM+@"
                                            </div>
                                        </div>
                                 
                                </div>
                            </li>
                ");
            }
            //lblDSSP.Text = sb.ToString();
        }
    }
}