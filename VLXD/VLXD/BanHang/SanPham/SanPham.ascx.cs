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
    public partial class SanPham : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadChucNang();
            loadSPHot();
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
                        <a href='/TrangBanHang.aspx?modul=SanPham&modul1=SP&modul2=DSSPL&ma="+ dt.Rows[i]["ID"] + @"'>
                              <i class='fa fa-arrow-circle-right'></i><span>" + dt.Rows[i]["Name"] + @"</span>
                        </a>
                    </li>
                ");
            }
            lblDMSP.Text = sb.ToString();

        }
        private void loadSPHot()
        {
            SanPhamDAO spDao = new SanPhamDAO();
            string query = "SELECT * FROM SanPham WHERE SPNoiBat = 1";
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
                    <li class='clearfix'>
                        <div class='products-block-left'>
                             <a href = '/TrangBanHang.aspx?modul=SanPham&modul1=CTSP&ma=" + dt.Rows[i]["ID"] + @"' >
                                <img class='img-responsive' alt='Đầm body cá tình với nhiều màu sắc hiện đại, trẻ trung' src='../pic/" + dt.Rows[i]["HinhAnh"] + @"'></a>
                         </div>
                         <div class='products-block-right'>
                               <p class='product-name'>
                                  <a href = '/TrangBanHang.aspx?modul=SanPham&modul1=CTSP&ma=" + dt.Rows[i]["ID"] + @"' >" + dt.Rows[i]["TenSP"] + @"</a>
                               </p>
                               <p class='product-price'>
                                  "+giaKM+@"
                              </p>
                              <p class='product-star'>
                                 <i class='fa fa-star'></i>
                                 <i class='fa fa-star'></i>
                                 <i class='fa fa-star'></i>
                                 <i class='fa fa-star'></i>
                                 <i class='fa fa-star-half-o'></i>
                             </p>
                         </div>
                     </li>
                ");
            }
            lblSPHot.Text = sb.ToString();
        }
        private void loadChucNang() {
            string modul2 = Request.QueryString["modul2"];
            switch (modul2)
            {
                case "DSSP":
                    PlaceHolder1.Controls.Add(LoadControl("DanhSachSanPham.ascx"));
                    break;
                case "DSSPL":
                    PlaceHolder1.Controls.Add(LoadControl("DanhSachSanPhamLoai.ascx"));
                    break;
            }
        }
    }
}