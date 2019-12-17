using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VLXD.DAO
{
    public class KhachHangDAO
    {
        string connectString = ConfigurationManager.ConnectionStrings["MyShop"].ConnectionString;
        public bool login(string username, string password)
        {
            
            string query = "SELECT COUNT(*) FROM KhachHang WHERE UserName = '" + username + "' and Password = '" + password + "' and HoatDong = 1";
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = (int)cmd.ExecuteScalar();
                return (result >= 1);
            }
        }
    }
}