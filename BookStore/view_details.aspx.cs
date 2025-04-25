using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore
{
    public partial class view_details : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        CL_Pro_Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["user"] != null)
            //{
            //    lbl_welcome.Text = "WELCOME!..." + Session["user"];
            //}
            //else
            //{
            //    Response.Redirect("login.aspx");
            //}
            getcon();
            display();
        }

        void getcon()
        {
            cs = new CL_Pro_Class1();
            cs.startcon();
        }

        void display()
        {
            if (Convert.ToInt16(Request.QueryString["pid"])!=0)
            {
                //int id = Convert.ToInt16(Request.QueryString["pid"]);
                getcon();
                da = new SqlDataAdapter("Select * from cate_tbl Where Id='" + Request.QueryString["pid"] + "' ", cs.startcon());
                ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_atc")
            {
                int id = (Convert.ToInt32(e.CommandArgument));
                Response.Redirect("Add_to_cart.aspx?id=" + id);
            }
            if (e.CommandName == "cmd_bn")
            {
                int id = (Convert.ToInt32(e.CommandArgument));
                Response.Redirect("Buy_Now.aspx?id=" + id);
            }
        }
    }
}