﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VLXD.Entity;

namespace VLXD.DAO
{
    public class TaiKhoanDAO
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
        public bool checkIDGroup(string username)
        {
            string query = "SELECT Count(*) FROM NguoiDung WHERE UserName='"+username+"' and HoatDong = 1 and IDGroup = 1";
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = (int)cmd.ExecuteScalar();
                return (result >= 1);
            }
        }
        public bool login(string username, string password) {
            string query = "SELECT COUNT(*) FROM NguoiDung WHERE UserName = '"+username+"' and Password = '"+password+"' and HoatDong = 1";
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

        public DataTable getTable(string query)
        {
            using (SqlConnection conn = new SqlConnection(connectString)) {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query,conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }

        public bool insert(NguoiDung nd)
        {
            string query = @"INSERT INTO NguoiDung(UserName,Password,TenND,Email,DiaChi,SDT,IDGroup,HoatDong) VALUES('"+nd.userName+"','"+nd.passWord+"',N'"
                +nd.hoTen+"','"+nd.email+"',N'"+nd.diaChi+"','"+nd.sdt+"','"+nd.idGroup+"','"+nd.hoatDong+"')";
            using (SqlConnection conn = new SqlConnection(connectString)) {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = cmd.ExecuteNonQuery();
                return (result >= 1);
            }
        }

        public bool update(string query)
        {

            using (SqlConnection conn = new SqlConnection(connectString))
            {
                try {conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = cmd.ExecuteNonQuery();
                return (result >= 1); }
                catch{ }
            }
            return false;
        }
    }
}