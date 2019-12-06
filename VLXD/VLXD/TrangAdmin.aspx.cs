using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD
{
    public partial class TrangAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkSession();
            loadLink1();
            loadLink2();
        }

        public void loadLink1() {
            string modul = "";
            if (Request.QueryString["modul"] != null)
            {
                modul = Request.QueryString["modul"];
            }
           
            switch (modul) {
                case "TaiKhoan":
                    lblLink.Text = "Tài khoản";
                    break;
            };
        }

        public void loadLink2()
        {
            string modul1 = "";
            if (Request.QueryString["modul1"] != null)
            {
                
                modul1 = Request.QueryString["modul1"];
            }
            switch (modul1)
            {
                case "DSTK":
                    lblLink2.Text = "Danh sách tài khoản";
                    break;
            };
        }

        public void checkSession() {
            if (Session["username"] == null) {
                Response.Redirect("Login.aspx");
            }
        }
    }
}