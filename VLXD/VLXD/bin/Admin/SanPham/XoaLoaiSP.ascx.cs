using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VLXD.DAO;
namespace VLXD.Admin.SanPham
{
    public partial class XoaLoaiSP : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            xoaLoai();
        }
        public void xoaLoai()
        {
            string id = Request.QueryString["MaSP"].ToString();  
        }
    }
}