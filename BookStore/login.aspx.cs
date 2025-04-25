using BookStore.Admin;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BookStore
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Cate_class cs;
        int i;

        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void getcon()
        {
            cs = new Cate_class();
            cs.startcon();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("select count(*) from reg_tbl where Name='" + TextBox1.Text + "' and PhoneNo='" + TextBox2.Text + "'", cs.startcon());
            i = Convert.ToInt16(cmd.ExecuteScalar());

            if (i > 0)
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("index.aspx");

            }
        }
    }
}