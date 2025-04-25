using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

namespace BookStore.Admin
{
    public class ABook_Class1
    {
        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public void insert(string img, string btl, string anm, string isbn, string pdate, string nop, string awd, string lan, string cat, string pri)
        {
            //startcon();
            cmd = new SqlCommand("insert into detl_tbl(Image,B_Title,A_Name,ISBN,P_Date,NOP,Award,Language,Category,Price)values('" + img + "','" + btl + "','" + anm + "','" + isbn + "','" + pdate + "','" + nop + "','" + awd + "','" + lan + "','" + cat + "','" + pri + "')", con);
            cmd.ExecuteNonQuery();
        }

        public SqlConnection startcon()
        {
            con = new SqlConnection(s);
            con.Open();
            return con;
        }
    }
}