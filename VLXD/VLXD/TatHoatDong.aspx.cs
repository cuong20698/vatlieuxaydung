using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
using System.Data;
namespace VLXD.Admin.TaiKhoan
{
    public partial class TatHoatDong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ma"] != null)
            {
               string ma = Request.QueryString["ma"];
               tatHoatDong(ma);
            }
            
            
            if(Request.QueryString["MaLoaiSP"]!=null)
            {
               int maloaisp=Convert.ToInt32(Request.QueryString["MaLoaiSP"].ToString());
               tathoatdongloaisp(maloaisp);
            }
            if (Request.QueryString["MaSP"] != null)
            {
                int masp = Convert.ToInt32(Request.QueryString["MaSP"].ToString());
                tathoatdongsp(masp);
            }
            if (Request.QueryString["MaSPPH"] != null)
            {
                int masp = Convert.ToInt32(Request.QueryString["MaSPPH"].ToString());
                phuchoisanpham(masp);
            }
            if (Request.QueryString["MaTKKHD"] != null)
            {
                int matk = Convert.ToInt32(Request.QueryString["MaTKKHD"].ToString());
                moHoatDong(matk);
            }
        }

        private void tatHoatDong(string ma) {
            string query = "UPDATE NguoiDung SET HoatDong = 0 WHERE ID = '"+ma+"'";
            TaiKhoanDAO tkDao = new TaiKhoanDAO();
           DataTable dt = tkDao.getTable("select * from NguoiDung where ID='"+ma+"'");
           int id = int.Parse(dt.Rows[0]["IDGroup"].ToString());
           if (id == 1)
           {
               Response.Write("<script>alert('Không thể xóa tài khoản này!') </script>");  

           }
           else
           {

               if (tkDao.update(query))
               {
                   Response.Redirect("TrangAdmin.aspx?modul=TaiKhoan&modul1=DSTK");
               }
           }
        }
        private void moHoatDong(int ma)
        {
            string query = "UPDATE NguoiDung SET HoatDong = 1 WHERE ID = '" + ma + "'";
            TaiKhoanDAO tkDao = new TaiKhoanDAO();
            //DataTable dt = tkDao.getTable("select * from NguoiDung where ID='" + ma + "'");
          //  int id = int.Parse(dt.Rows[0]["IDGroup"].ToString());
                if (tkDao.update(query))
                {
                    Response.Redirect("TrangAdmin.aspx?modul=TaiKhoan&modul1=TKKHD");
                }
        }
        private void tathoatdongloaisp(int ma){
            string query = "UPDATE DanhMucSP SET HoatDong = 0 WHERE ID = '"+ma+"'";
            DanhMucSPDAO tkDao = new DanhMucSPDAO();
            if (tkDao.update(query))
            {
                Response.Redirect("TrangAdmin.aspx?modul=TaiKhoan&modul1=DMSP");
            }
        }
        private void tathoatdongsp(int ma)
        {
            string query = "UPDATE SanPham SET HoatDong = 0 WHERE ID = '" + ma + "'";
            SanPhamDAO tkDao = new SanPhamDAO() ;
            if (tkDao.update(query))
            {
                Response.Redirect("TrangAdmin.aspx?modul=TaiKhoan&modul1=DSSP");
            }
        }
        private void phuchoisanpham(int ma)
        {
            TaiKhoanDAO tkDao = new TaiKhoanDAO();
            DataTable dt = tkDao.getTable("select * from NguoiDung where UserName='" +Session["username"] + "'");
            int id = int.Parse(dt.Rows[0]["IDGroup"].ToString());
            if (id == 1)
            {
                string query = "UPDATE SanPham SET HoatDong = 1 WHERE ID = '" + ma + "'";
                if (tkDao.update(query))
                {
                    Response.Redirect("TrangAdmin.aspx?modul=TaiKhoan&modul1=NKSP");
                }

            }
            else { Response.Redirect("TrangAdmin.aspx?modul=TaiKhoan&modul1=NKSP"); }
        }
    }
}