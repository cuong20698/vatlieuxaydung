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
    public class DonHangDAO
    {
        private string connectString = ConfigurationManager.ConnectionStrings["MyShop"].ConnectionString;
        public DonHangDAO() { }

        public bool checkID(int id)
        {
            string query = "SELECT COUNT(*) FROM DonHang";
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = cmd.ExecuteNonQuery();
                return (result >= 1);
            }
        }
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

        public bool insertDH(DonHang dh)
        {
            string query = "INSERT INTO DonHang VALUES ("+dh.maDH+","+dh.maKH+ "," + dh.thanhTien + ",0,'" + dh.ngayLap+"', null)";
            using(SqlConnection conn = new SqlConnection(connectString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int result = cmd.ExecuteNonQuery();
                return (result >= 1);
            }
        }

        public bool insertCTDH(ChiTietDonHang dh)
        {
            string query = "INSERT INTO ChiTietDonHang VALUES (N'"+dh.tenSP+"','"+dh.hinhAnh+"'," + dh.soLuong + "," + dh.donGia + "," + dh.thanhTien + ", " + dh.maDH + ")";
            using (SqlConnection conn = new SqlConnection(connectString))
            {
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