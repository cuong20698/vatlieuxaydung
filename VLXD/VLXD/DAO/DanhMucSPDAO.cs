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
    public class DanhMucSPDAO
    {
        string connectString = ConfigurationManager.ConnectionStrings["MyShop"].ConnectionString;
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
            string query = @"SELECT * FROM DanhMucSP";
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }

        public bool insert(DanhMucSP dm)
        {
            string query = "INSERT INTO DanhMucSP VALUES(N'"+dm.name+"')";
            using (SqlConnection conn = new SqlConnection(connectString)) {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = cmd.ExecuteNonQuery();
                return (result >= 1);
            }
        }

        public bool update(long id)
        {
            throw new NotImplementedException();
        }
    }
}