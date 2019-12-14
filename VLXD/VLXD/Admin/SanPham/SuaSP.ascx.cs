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
    public partial class SuaSP : System.Web.UI.UserControl
    {
        SanPhamDAO DAO = new SanPhamDAO();
        string MaSanPham;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["MaSP"] != null)
            {
                MaSanPham = Request.QueryString["MaSP"];
                DataTable dt = DAO.getTable1("SELECT * FROM SanPham WHERE ID ='" + MaSanPham + "'");
                
                if (dt.Rows.Count > 0)
                {
                    txtGia.Focus();
                    txtMaSP.Value = dt.Rows[0]["ID"].ToString();
                    txtTenSP.Value = dt.Rows[0]["TenSP"].ToString();
                    txtSoluong.Value = dt.Rows[0]["SoLuong"].ToString();
                    txtGia.Value = dt.Rows[0]["Gia"].ToString();
                    lbhinhanh.Text = "<img src='../../../pic/" + dt.Rows[0]["HinhAnh"] + "' style='width: 200px; height: auto'/>";
                    txtMota.Value = dt.Rows[0]["Mota"].ToString();
                    txtloaisp.Value = dt.Rows[0]["LoaiSP"].ToString();

                }
                else
                {
                    Response.Redirect("/TrangAdmin.aspx?modul=SanPham&modul1=DSSP");
                }
            }
            else
            {
                Response.Redirect("/TrangAdmin.aspx?modul=SanPham&modul1=DSSP");
            }
        }

        protected void btncapnhat_Click(object sender, EventArgs e)
        {
            DAO.update("UPDATE SanPham SET Gia='"+txtGia.Value+"', SoLuong='"+txtSoluong.Value+"', Mota='"+txtMota.Value+"' where ID='"+MaSanPham+"'");
        }
    }
}