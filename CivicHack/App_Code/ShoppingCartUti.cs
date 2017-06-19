using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CivicHack.App_Code
{
    public class ShoppingCartUti
    {
        public string ID { get; set; }
        public string UserName { get; set; }
        public string TourType { get; set; }
        public string GroupSize { get; set; }
        public double Price { get; set; }

        public ShoppingCartUti()
        {

        }

        public void insertShoppingCart()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string qry = "insert into [ParkShoppingCart] values (@UserName, @GroupSize, @TourType, @Price) select @@identity";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@GroupSize", GroupSize);
            cmd.Parameters.AddWithValue("@TourType", TourType);
            cmd.Parameters.AddWithValue("@Price", Price);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            ID = dr[0].ToString();
            dr.Close();
            conn.Close();
        }

        public void readRecordById()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string qry = "select * from ParkShoppingCart where (id = @id)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@id", ID);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            ID = dr["Id"].ToString();
            UserName = dr["UserName"].ToString();
            TourType = dr["TourType"].ToString();
            GroupSize = dr["GroupSize"].ToString();
            Price = Convert.ToDouble(dr["Price"].ToString());
            dr.Close();
            conn.Close();
        }

        public void removeRecord()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string qry = "delete from [ParkShoppingCart] where (Id = @id)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@id", ID);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}