using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CivicHack.App_Code
{
    public class OrderUti
    {
        public string OrderId { get; set; }
        public string UserName { get; set; }
        public string TourType { get; set; }
        public string GroupSize { get; set; }
        public double Price { get; set; }
        public string OrderTime { get; set; }
        public string Delivery_ID { get; set; }
        public OrderUti()
        {

        }

        public void insertOrder()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string qry = "insert into [ParkOrder] (UserName,GroupSize,TourType,Price,Delivery_ID) values (@UserName, @GroupSize, @TourType, @Price, @Delivery_ID)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@GroupSize", GroupSize);
            cmd.Parameters.AddWithValue("@TourType", TourType);
            cmd.Parameters.AddWithValue("@Price", Price);
            cmd.Parameters.AddWithValue("@Delivery_ID", Delivery_ID);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}