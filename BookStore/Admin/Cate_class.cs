using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


namespace BookStore.Admin
{
    public class Cate_class
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
        public SqlConnection startcon()
        {
            con = new SqlConnection(s);
            con.Open();
            return con;
        }

        public void insert(string unm, string passw)
        {
            cmd = new SqlCommand("insert into alogin_tbl(Username,Password)values('" + unm + "','" + passw + "')", con);
            cmd.ExecuteNonQuery();        
        }

        public DataSet filldata4()
        {
            da = new SqlDataAdapter("select * from alogin_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void insert(string nm, string mail, string pass, string phno, string gen, string add, string dob, string ct)
        {
            cmd = new SqlCommand("insert into reg_tbl(Name,Email,Password,PhoneNo,Gender,Address,DateOfBirth,City)values('" + nm + "','" + mail + "','" + pass + "','" + phno + "','" + gen + "','" + add + "','" + dob + "','" + ct + "')", con);
            cmd.ExecuteNonQuery();
        }
        //public void insert(string cnm,string cdes)
        //{
        //    cmd = new SqlCommand("insert into cate_tbl(c_name='" + cnm + "',c_description='" + cdes + "')");
        //    cmd.ExecuteNonQuery();
        //}


        //public void addbook(string img,string btl,string anm, string isbn, string pdt, string nop, string awd, string lan, string cat, string pri)
        //{
        //    cmd = new SqlCommand("insert into detl_tbl(Image,B_Title,A_Name,ISBN,P_Date,NOP,Award,Language,Category,Price)values('" + img + "','" + btl + "','" + anm + "','" + isbn + "','" + pdt + "','" + nop + "','" + awd + "','" + lan + "','" + cat + "','" + pri + "')",con);
        //    cmd.ExecuteNonQuery();
        //}

        //public DataSet filldata3()
        //{
        //    da = new SqlDataAdapter("select * from detl_tbl", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    return ds;
        //}

        //public DataSet select1(int id)
        //{
        //    da = new SqlDataAdapter("select*from detl_tbl where PId='" + id + "'", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    return ds;
        //}

        //public void addbook(string img, string btl, string anm, string isbn, string pdate, string nop, string awd, string lan, string cat, string pri)
        //{
        //    cmd = new SqlCommand("insert into detl_tbl(Image,B_Title,A_Name,ISBN,P_Date,NOP,Award,Language,Category,Price)values('" + img + "','" + btl + "','" + anm + "','" + isbn + "','" + pdate + "','" + nop + "','" + awd + "','" + lan + "','" + cat + "','" + pri + "')", con);
        //    cmd.ExecuteNonQuery();
        //}
        public DataSet filldata()
        {
            da = new SqlDataAdapter("select * from cate_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet filldata2()
        {
            da = new SqlDataAdapter("select * from reg_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;

        }

        


        public DataSet select(int id)
        {
            da = new SqlDataAdapter("select*from cate_tbl where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void cateadd(string img, string nm, string des) //Dept_tbl
        {
            cmd = new SqlCommand("insert into cat_tbl(Image,c_name,c_description)values('" + img + "','" + nm + "','" + des + "')", con);
            cmd.ExecuteNonQuery();
        }

        

    }
}