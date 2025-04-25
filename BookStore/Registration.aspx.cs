using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
using static System.Runtime.CompilerServices.RuntimeHelpers;

namespace BookStore
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        CL_Reg_Class2 cs;

        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (Session["user"] != null)
            {
                lbl_welcome.Text = "WELCOME!..." + Session["user"];
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TextBox1.Text = TextBox1.Text;
            //TextBox2.Text = TextBox2.Text;
            //TextBox3.Text = TextBox3.Text;
            //TextBox4.Text = TextBox4.Text;
            //TextBox5.Text = TextBox5.Text;
            //TextBox6.Text = TextBox6.Text;
            if (Button2.Text == "Submit")
            {
                getcon();
                cs.insert(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox5.Text, TextBox4.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text);
                //cmd = new SqlCommand("insert into reg_tbl(Name,Email,Password,PhoneNo,Gender,Address,DateOfBirth,City)values" + "('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
                //cmd.ExecuteNonQuery();
                //fillgrid();
            }
            //else
            //{
            //    getcon();
            //    cmd = new SqlCommand("update reg_tbl set Name='" + TextBox1.Text + "',Email='" + TextBox2.Text + "',Password='" + TextBox3.Text + "',PhoneNo='" + TextBox5.Text + "',Gender='" + TextBox4.Text + "',Address='" + TextBox6.Text + "',DateOfBirth='" + TextBox7.Text + "',City='" + TextBox8.Text + "' where Id='" + ViewState["id"] + "'", con);
            //    cmd.ExecuteNonQuery() ;
            //    fillgrid();
            //    empty();
            //}
            Response.Redirect("ARegistration.aspx");
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if(e.CommandName=="cmd_edt")
            //{
            //    int id=Convert.ToInt16(e.CommandArgument);
            //    ViewState["id"] = id;
            //    filltext();
            //    Button2.Text = "Update";
            //}
            //else
            //{
            //    getcon();
            //    int id = Convert.ToInt16(e.CommandArgument);
            //    ViewState["id"] = id;
            //    cmd = new SqlCommand("delete from reg_tbl where Id='" + ViewState["id"] + "'", con);
            //    cmd.ExecuteNonQuery();
            //    fillgrid();
            //}
        }

        void getcon()
        {
            cs = new CL_Reg_Class2();
            cs.startcon();
            //con = new SqlConnection(s);
            //con.Open();
        }

        //void empty()
        //{
        //    TextBox1.Text = "";
        //    TextBox2.Text = "";
        //    TextBox3.Text = "";
        //    TextBox4.Text = "";
        //    TextBox5.Text = "";
        //    TextBox6.Text = "";
        //    TextBox7.Text = "";
        //    TextBox8.Text = "";
        //    Button2.Text = "Submit";
        //}

        //void filltext()
        //{
        //    getcon();
        //    ds = new DataSet();
        //    ds = select(Convert.ToInt16(ViewState["id"]));

        //    TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
        //    TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
        //    TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
        //    TextBox4.Text = ds.Tables[0].Rows[0][5].ToString();
        //    TextBox5.Text = ds.Tables[0].Rows[0][4].ToString();
        //    TextBox6.Text = ds.Tables[0].Rows[0][6].ToString();
        //    TextBox7.Text = ds.Tables[0].Rows[0][7].ToString();
        //    TextBox8.Text = ds.Tables[0].Rows[0][8].ToString();
        //}

        //public DataSet select(int id)
        //{
        //    getcon();
        //    da = new SqlDataAdapter("select * from reg_tbl where Id='" + id + "'", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    return ds;
        //}

        //void fillgrid()
        //{
        //    getcon();
        //    da = new SqlDataAdapter("Select * from reg_tbl", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //}
    }
}