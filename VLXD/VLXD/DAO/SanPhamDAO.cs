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
    public class SanPhamDAO : XuLy
    {
        private string connectString = ConfigurationManager.ConnectionStrings["MyShop"].ConnectionString;
        public bool checkUser(string username)
        {
            throw new NotImplementedException();
        }

        public bool delete(long id)
        {
            throw new NotImplementedException();
        }

        public DataSet getDataSet()
        {
            throw new NotImplementedException();
        }

        public DataTable getTable()
        {
            string query = @"SELECT * FROM SanPham";
            using (SqlConnection conn = new SqlConnection(connectString)) {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }

        public bool insert(NguoiDung nd)
        {
            throw new NotImplementedException();
        }

        public bool update(long id)
        {
            throw new NotImplementedException();
        }
    }
}