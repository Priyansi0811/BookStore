using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BookStore.Admin;

namespace BookStore
{
    public partial class Add_to_cart : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Cate_class cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            displays();
            //if (Session["user"] != null)
            //{
            //    lbl_welcome.Text = "WELCOME!..." + Session["user"];
            //}
            //else
            //{
            //    Response.Redirect("login.aspx");
            //}
        }

        void getcon()
        {
            cs = new Cate_class();
            cs.startcon();
        }

        void displays()
        {
            if (Convert.ToInt16(Request.QueryString["id"]) != 0)
            {
                //int id = Convert.ToInt16(Request.QueryString["id"]);
                getcon();
                da = new SqlDataAdapter("Select * from cate_tbl Where id='" + Request.QueryString["id"] + "' ", cs.startcon());
                ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_bn")
            {
                int id = (Convert.ToInt32(e.CommandArgument));
                Response.Redirect("Buy_Now.aspx?id=" + id);
            }
        }
    }
}