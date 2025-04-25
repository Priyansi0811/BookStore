using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

namespace BookStore
{
    public class CL_Pro_Class1
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
        //string c1, c2, c3, c4;
        //string[] ct = new string[4];

        //public void startcon()
        //{
        //    con = new SqlConnection(s);
        //    con.Open();
        //}

        public SqlConnection startcon()
        {
            SqlConnection con = new SqlConnection(s);
            con.Open();
            return con;
        }


        public void insert(string cnm, string gen, string phno, string add, string cntry, string c1, string c2, string c3, string c4, string bnm, string lan, string qnty, string mthd)
        {
            cmd = new SqlCommand("insert into prod_tbl(Customer_Name,Gender,Phone_No,Address,Country,C1,C2,C3,C4,Book_Name,Language,Quantity,Method)values('" + cnm + "','" + gen + "','" + phno + "','" + add + "','" + cntry + "','" + c1 + "','" + c2 + "','" + c3 + "','" + c4 + "','" + bnm + "','" + lan + "','" + qnty + "','" + mthd + "')", con);
            cmd.ExecuteNonQuery();
        }

        public DataSet GetUserCart(int uid)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM atc_tbl WHERE UId = " + uid, startcon());
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public void RemoveFromCart(int cartId)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM atc_tbl WHERE AtcId = " + cartId, startcon());
            cmd.ExecuteNonQuery();
        }

        public bool ProcessCheckout(int userId)
        {
            try
            {
                SqlConnection con = startcon();


                string getCartQuery = "SELECT PId, Image, B_Title, ISBN, Category, Price FROM atc_tbl WHERE UId = " + userId;
                SqlCommand getCartCmd = new SqlCommand(getCartQuery, con);
                SqlDataAdapter da = new SqlDataAdapter(getCartCmd);
                DataTable cartItems = new DataTable();
                da.Fill(cartItems);


                foreach (DataRow row in cartItems.Rows)
                {
                    int pid = Convert.ToInt32(row["PId"]);
                    string pname = row["Pro_Name"].ToString();
                    decimal price = Convert.ToDecimal(row["Price"]);
                    int qty = Convert.ToInt32(row["Quantity"]);
                    string date = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                    string insertQuery = "INSERT INTO Order_tbl (UId, PId, Pro_Name, Price, Quantity, OrderDate) " +
                                         "VALUES (" + userId + ", " + pid + ", '" + pname + "', " + price + ", " + qty + ", '" + date + "')";
                    SqlCommand insertCmd = new SqlCommand(insertQuery, con);
                    insertCmd.ExecuteNonQuery();
                }


                string deleteQuery = "DELETE FROM atc_tbl WHERE UId = " + userId;
                SqlCommand deleteCmd = new SqlCommand(deleteQuery, con);
                deleteCmd.ExecuteNonQuery();

                return true;
            }
            catch
            {
                return false;
            }
        }
        public void RemoveFromCart(int cartId, int uid)
        {
            cmd = new SqlCommand("DELETE FROM atc_tbl WHERE AtcId = " + cartId + " AND UId = " + uid, startcon());
            cmd.ExecuteNonQuery();
        }

        public void addbook(string img, string btl, string anm, string isbn, string pdt, string nop, string awd, string lan, string cat, string pri)
        {
            cmd = new SqlCommand("insert into detl_tbl(Image,B_Title,A_Name,ISBN,P_Date,NOP,Award,Language,Category,Price)values('" + img + "','" + btl + "','" + anm + "','" + isbn + "','" + pdt + "','" + nop + "','" + awd + "','" + lan + "','" + cat + "','" + pri + "')", con);
            cmd.ExecuteNonQuery();
        }

        public DataSet filldata3()
        {
            da = new SqlDataAdapter("select * from detl_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet select1(int id)
        {
            da = new SqlDataAdapter("select*from detl_tbl where PId='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}