﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;

namespace VLXD
{
    public partial class TrangBanHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadSLDH();
            loadDMSP();
            loadBtnUser();
            taoDH();
        }
        private void loadDMSP() {
            DanhMucSPDAO dmDao = new DanhMucSPDAO();
            DataTable dt = dmDao.getTable();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < dt.Rows.Count; i++) {
                sb.Append(@"
                    <li class='level0'>
                        <a href='/TrangBanHang.aspx?modul=SanPham&modul1=SP&modul2=DSSPL&ma="+dt.Rows[i]["ID"]+@"'>
                              <span>"+dt.Rows[i]["Name"]+ @"</span>
                        </a>
                    </li>
                ");
            }
            lblDMSP.Text = sb.ToString();
            
        }
        private void taoDH()
        {
            DataTable dt = new DataTable();
            if (Session["giohang"] == null)
            {
                dt.Columns.Add("ID");
                dt.Columns.Add("TenSP");
                dt.Columns.Add("HinhAnh");
                dt.Columns.Add("SoLuong");
                dt.Columns.Add("DonGia");
                dt.Columns.Add("DVT");                
                dt.Columns.Add("ThanhTien");
                Session["giohang"] = dt;
            }
            else
            {
                dt = (DataTable)Session["giohang"];
            }
        }

        private void loadSLDH() {
            if(Session["giohang"] != null)
            {
                DataTable dt = (DataTable)Session["giohang"];
                lblSLDH.Text = dt.Rows.Count.ToString();
            }
        }

        private void loadBtnUser()
        {
            if (Session["KH"] != null)
            {
                lblUser.Text = @"
                        <li class='account-login'><a href='/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=TTTK'><i class='glyphicon glyphicon-user'></i>" + Session["KH"].ToString()+ @"</a></li>
                        <li class='account-register'><a href = '/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DX'><i class='glyphicon glyphicon-log-out'></i>Đăng xuất</a></li>";
            }else
            {
                lblUser.Text = @"
                        <li class='account-login'><a href='/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN'><i class='fa fa-sign-in'></i>Đăng nhập </a></li>
                        <li class='account-register'><a href ='/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DK'><i class='fa fa-key'></i>Đăng ký</a></li>";
            }
        }
    }
}