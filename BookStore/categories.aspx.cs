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
    public partial class categories : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Cate_class cs;
        PagedDataSource pg;
        int pid, row;
        int p;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            display();
            if (Session["user"] != null)
            {
                lbl_welcome.Text = "WELCOME!..." + Session["user"];
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        //if (!IsPostBack)
        //   {
        //       ViewState["pid"] = 0;  
        //       LinkButton5.Enabled = false; 
        //   }
        void getcon()
        {
            cs = new Cate_class();
            cs.startcon();
            LinkButton6.Enabled = true;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton5_Click1(object sender, EventArgs e)//previous
        {
            LinkButton5.Enabled = true;
            p += Convert.ToInt32(ViewState["pid"]) - 1;
            ViewState["pid"] = Convert.ToInt32(p);

            if (p == 0)
            {
                LinkButton5.Enabled = false;
            }
            display();
        }

        protected void LinkButton6_Click1(object sender, EventArgs e)//next
        {
            LinkButton5.Enabled = true;

            p += Convert.ToInt32(ViewState["pid"]) + 1;
            ViewState["pid"] = Convert.ToInt32(p);
            int temp = row / pg.PageSize;
            if (p == temp)
            {
                LinkButton6.Enabled = false;
            }
            display();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_vd")
            {
                int id = (Convert.ToInt32(e.CommandArgument));
                Response.Redirect("view_details.aspx?pid=" + id);

            }
            if (e.CommandName == "cmd_atc")
            {
                int id = (Convert.ToInt32(e.CommandArgument));
                Response.Redirect("Add_to_cart.aspx?id=" + id);


            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        void display()
        {
            da = new SqlDataAdapter("select * from cate_tbl", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);
            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 3;
            pg.DataSource = ds.Tables[0].DefaultView;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);
            DataList1.DataSource = pg;
            DataList1.DataBind();


            //da = new SqlDataAdapter("SELECT * FROM cate_tbl", cs.startcon());
            //ds = new DataSet();
            //da.Fill(ds);
            //row = ds.Tables[0].Rows.Count;
            //pg = new PagedDataSource();
            //pg.AllowPaging = true;
            //pg.PageSize =3;
            //pg.DataSource = ds.Tables[0].DefaultView;

            //// Set the page index from ViewState
            //int p = Convert.ToInt32(ViewState["pid"]);
            //pg.CurrentPageIndex = p;

            //DataList1.DataSource = pg;
            //DataList1.DataBind();

            //// Disable "Previous" button on first page
            //LinkButton5.Enabled = (p > 0);

            //// Disable "Next" button on last page
            //int totalPages = (int)Math.Ceiling((double)row / pg.PageSize);
            //LinkButton6.Enabled = (p < totalPages - 1);

        }

    }
}