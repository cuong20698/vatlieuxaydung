﻿using System;
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
            double gia = Convert.ToDouble(txtGia.Value);
            string hinhanh = null;
            bool spnb = true;
            string mota = txtMota.Value;
            int loaisp = Convert.ToInt32(ddrloai.SelectedValue.ToString());
            SP sp = new SP(masp, tensp, gia, hinhanh, spnb, mota, loaisp);
            return sp;
        }
       
    }
}