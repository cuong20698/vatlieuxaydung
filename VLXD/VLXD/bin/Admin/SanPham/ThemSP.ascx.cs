using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VLXD.DAO;
using VLXD.Entity;
using System.Data.SqlClient;
namespace VLXD.Admin.SanPham
{
    public partial class ThemSP : System.Web.UI.UserControl
    {
        SanPhamDAO DAO = new SanPhamDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadLoaiSP();
            
        }
        private void LoadLoaiSP()
        {
            string sql = "SELECT * FROM dbo.DanhMucSP";
            DataTable tb = new DataTable();
            tb = DAO.getTable1(sql);
            ddrloai.DataSource = tb;
            ddrloai.DataTextField = "Name"; //Text hiển thị
            ddrloai.DataValueField = "ID"; //Giá trị khi chọn
            ddrloai.DataBind();
        }
        private SP getdata()
        {
            int masp = Convert.ToInt32(txtMaSP.Value);
            string tensp = txtTenSP.Value;
            double gia =double.Parse(txtGia.Value);
            string hinhanh = fUpload.FileName.ToString();
            string mota = txtMota.Value;
            int loaisp = Convert.ToInt32(ddrloai.SelectedValue.ToString());
            SP sp = new SP(masp, tensp, gia, hinhanh,false, mota, loaisp);
            return sp;
        }

        protected void btnthemmoi_Click(object sender, EventArgs e)
        {
                    DataTable dt = DAO.getTable1("SELECT * FROM SanPham WHERE ID = '" + txtMaSP.Value + "'");
                    if (dt.Rows.Count == 0)
                    {
                        if (fUpload.FileContent.Length > 0)
                        {
                            if (fUpload.FileName.EndsWith(".jpeg") || fUpload.FileName.EndsWith(".jpg") || fUpload.FileName.EndsWith(".png") || fUpload.FileName.EndsWith(".gif"))
                            {
                                fUpload.SaveAs(Server.MapPath("pic\\" + fUpload.FileName));
                                lbThongBao.Text = "";
                                bool Result = DAO.insert(getdata());
                                if (Result == true)
                                {
                                    Response.Write("<script>alert('Thêm sản phẩm thành công!');</script>");
                                    
                                }
                              }

                        }
                        else { Response.Write("<script>alert('Vui lòng chọn hình ảnh!!');</script>"); }
                    }
                    else
                    {
                        Response.Write("<script>alert('Đã tồn tại sản phẩm này!!');</script>");
                    }
        }
       
    }
}