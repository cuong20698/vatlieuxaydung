﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VLXD.DAO
{
    public class TaiKhoanDAO : XuLy
    {
        private string connectString = ConfigurationManager.ConnectionStrings["MyShop"].ConnectionString;
        public TaiKhoanDAO() { }

        public bool checkUser(string username)
        {
            string query = "SELECT COUNT(*) FROM NguoiDung WHERE UserName = '"+username+"'";
            using (SqlConnection conn = new SqlConnection(connectString)) {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query,conn);
                int result = (int)cmd.ExecuteScalar();
                return (result >= 1);
            }
        }

        public bool login(string username, string password) {
            string query = "SELECT COUNT(*) FROM NguoiDung WHERE UserName = '"+username+"' and Password = '"+password+"'";
            using (SqlConnection conn = new SqlConnection(connectString)) {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = (int)cmd.ExecuteScalar();
                return (result >= 1);
            }
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
            string query = "SELECT * FROM NguoiDung";
            using (SqlConnection conn = new SqlConnection(connectString)) {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query,conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }

        public bool insert()
        {
            throw new NotImplementedException();
        }
        public bool update(long id)
        {
            throw new NotImplementedException();
        }
    }
}