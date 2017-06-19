using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CivicHack.App_Code
{
    public class CustomerUtil
    {
        public string userName { get; set; }
        public string fName { get; set; }
        public string lName { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string age { get; set; }
        public char gender { get; set; }

        internal CustomerUtil getUser(object text)
        {
            throw new NotImplementedException();
        }

        public CustomerUtil()
        {
        }

        public void insertData()
        {
            System.Data.SqlClient.SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string insertString = "INSERT INTO ParkCustomer (UserName, FName, LName, Email, Password, Age, Gender) values (@UserName, @FName, @LName, @Email, @Password, @Age, @Gender)";
            SqlCommand comd = new SqlCommand(insertString, conn);
            comd.Parameters.AddWithValue("@UserName", userName);
            comd.Parameters.AddWithValue("@FName", fName);
            comd.Parameters.AddWithValue("@LName", lName);
            comd.Parameters.AddWithValue("@Email", email);
            comd.Parameters.AddWithValue("@Password", EncryptPassword.encryptString(password));
            comd.Parameters.AddWithValue("@Age", Convert.ToInt32(age));
            comd.Parameters.AddWithValue("@Gender", gender);
            comd.ExecuteNonQuery();
            conn.Close();
        }

        public bool checkIfUserExists()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string checkUser = "select * from ParkCustomer where UserName = @userName";
            SqlCommand comd = new SqlCommand(checkUser, conn);
            comd.Parameters.AddWithValue("@userName", userName);
            SqlDataReader dr = comd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                conn.Close();
                return true;
            }
            dr.Close();
            conn.Close();
            return false;
        }

        public bool checkPassword()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string checkUser = "select * from ParkCustomer where UserName = @userName";
            SqlCommand comd = new SqlCommand(checkUser, conn);
            comd.Parameters.AddWithValue("@userName", userName);
            SqlDataReader dr = comd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                if (dr["Password"].ToString().Equals(EncryptPassword.encryptString(password)))
                {
                    dr.Close();
                    conn.Close();
                    return true;
                }
            }
            dr.Close();
            conn.Close();
            return false;
        }

        public void resetPassword(string newpwd)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string checkUser = "update ParkCustomer set ParkCustomer.Password = @password where ParkCustomer.UserName = @userName";
            SqlCommand comd = new SqlCommand(checkUser, conn);
            comd.Parameters.AddWithValue("@userName", userName);
            comd.Parameters.AddWithValue("@password", EncryptPassword.encryptString(newpwd));
            comd.ExecuteNonQuery();
            conn.Close();
        }

        public CustomerUtil getUser(string userName)
        {
            CustomerUtil customer = new CustomerUtil();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["parkDB"].ConnectionString);
            conn.Open();
            string checkUser = "select UserName, FName, LName, Email, [Password], Age, Gender from ParkCustomer where UserName=@userName";
            SqlCommand comd = new SqlCommand(checkUser, conn);
            comd.Parameters.AddWithValue("@userName", userName);
            SqlDataReader dr = comd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                customer.userName = dr[0].ToString();
                customer.fName = dr[1].ToString();
                customer.lName = dr[2].ToString();
                customer.email = dr[3].ToString();
                customer.password = dr[4].ToString();
                customer.age = dr[5].ToString();
                customer.gender = dr[6].ToString().ToCharArray()[0];
            }
            dr.Close();
            conn.Close();
            return customer;
        }
    }
}