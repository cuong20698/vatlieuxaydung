using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VLXD.Entity;

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
        public DataTable getTable(string query)
        {
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }
        public KhachHang getKhachHang(int id) {
            string query = "SELECT * FROM KhachHang WHERE ID = "+id+" and HoatDong = 1";
            DataTable dt = getTable(query);
            
            KhachHang kh = new KhachHang();
            kh.userName = dt.Rows[0]["UserName"].ToString();
            kh.passWord = dt.Rows[0]["Password"].ToString();
            kh.tenKH = dt.Rows[0]["TenKH"].ToString();
            kh.ngaySinh = DateTime.Parse(dt.Rows[0]["UserName"].ToString());
            kh.gioiTinh = bool.Parse(dt.Rows[0]["GioiTinh"].ToString());
            kh.email = dt.Rows[0]["Email"].ToString();
            kh.sdt = dt.Rows[0]["SDT"].ToString();
            kh.diaChi = dt.Rows[0]["DiaChi"].ToString();
            kh.hoatDong = true;
            return kh;
        }
    }

    
}