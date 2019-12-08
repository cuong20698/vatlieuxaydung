using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VLXD
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            XoaCookie();
        }
        private void XoaCookie()
        {
            Session.Remove("username");
            HttpCookie c1 = new HttpCookie("username");
            HttpCookie c2 = new HttpCookie("password");
            c1.Expires = DateTime.Now.AddDays(-1);
            c2.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(c1);
            Response.Cookies.Add(c2);
            Response.Redirect("TrangAdmin.aspx");
        }
    }
}