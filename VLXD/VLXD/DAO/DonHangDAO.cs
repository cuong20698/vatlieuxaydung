using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VLXD.DAO
{
    public class DonHangDAO
    {
        private string connectString = ConfigurationManager.ConnectionStrings["MyShop"].ConnectionString;
        public DonHangDAO() { }

        public DataTable getTable()
        {
            string query = "SELECT * FROM DonHang";
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }

        public DataTable getDetail(int Id)
        {
            string query = "SELECT *  FROM ChiTietDonHang, SanPham where ChiTietDonHang.MaSP = SanPham.ID and MaDH = '" + Id + "'";
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }

        public bool checkUser(string username)
        {
            throw new NotImplementedException();
        }

        public bool insert(Entity.NguoiDung nd)
        {
            throw new NotImplementedException();
        }

        public bool delete(long id)
        {
            throw new NotImplementedException();
        }

        public bool update(string query)
        {
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = cmd.ExecuteNonQuery();
                return (result >= 1);
            }
        }

        public DataSet getDataSet()
        {
            throw new NotImplementedException();
        }
    }
}