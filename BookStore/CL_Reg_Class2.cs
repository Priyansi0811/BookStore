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
    public class CL_Reg_Class2
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;

        public void startcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        //public SqlConnection startcon()
        //{
        //    con = new SqlConnection(s);
        //    con.Open();
        //    return con;
        //}

        public void insert(string nm, string mail, string pass, string phno, string gen,  string add, string dob, string ct )
        {
            cmd = new SqlCommand("insert into reg_tbl(Name,Email,password,PhoneNo,Gender,Address,DateOfBirth,City)values('" + nm + "','" + mail + "','" + pass + "','" + phno + "','" + gen + "','" + add + "','" + dob + "','" + ct + "')", con);
            cmd.ExecuteNonQuery();
        }
    }
}