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
    public partial class Display_Book : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        CL_Pro_Class1 cs;
        PagedDataSource pg;
        int pid, row;
        int p;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            display();
            if (!IsPostBack)
            {
                ViewState["pid"] = 0;
            }
            display();
            if (Session["user"] != null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                lbl_welcome.Text = "WELCOME!..." + Session["user"];
                
            }

        }
        void getcon()
        {
            cs = new CL_Pro_Class1();
            cs.startcon();
            LinkButton4.Enabled = true;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            LinkButton3.Enabled = true;

            p += Convert.ToInt32(ViewState["pid"]) - 1;
            ViewState["pid"] = Convert.ToInt32(p);
            int temp = row / pg.PageSize;
            if (p == 0)
            {
                LinkButton3.Enabled = false;
            }
            display();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            LinkButton3.Enabled = true;

            p += Convert.ToInt32(ViewState["pid"]) + 1;
            ViewState["pid"] = Convert.ToInt32(p);
            int temp = row / pg.PageSize;
            if (p == temp)
            {
                LinkButton4.Enabled = false;
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
                Response.Redirect("view_Book.aspx?vid=" + id);

            }
            if (e.CommandName == "cmd_atc")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                cmd_atc(productId);
                // After adding to cart, you might want to provide feedback or redirect to the cart page
                // For now, let's just redisplay the current page
                display();
                // Response.Redirect("AddToCart.aspx?aid=" + productId);
            }
        }

        void cmd_atc(int productId)
        {
            getcon();
            int userId = Convert.ToInt32(Session["user"]);

            // Check if item already exists
            string checkQuery = "SELECT Quantity FROM atc_tbl WHERE UId = " + userId + " AND PId = " + productId;
            SqlCommand checkCmd = new SqlCommand(checkQuery, cs.startcon());
            object result = checkCmd.ExecuteScalar();

            if (result != null)
            {
                // If exists, increment quantity
                int qty = Convert.ToInt32(result);
                string updateQuery = "UPDATE atc_tbl SET Quantity = " + (qty + 1) +
                                     " WHERE UId = " + userId + " AND PId = " + productId;
                SqlCommand updateCmd = new SqlCommand(updateQuery, cs.startcon());
                updateCmd.ExecuteNonQuery();
            }
            else
            {
                // Get product details
                string query = "SELECT * FROM detl_tbl WHERE PId = " + productId;
                SqlCommand cmd = new SqlCommand(query, cs.startcon());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string image = dr["Image"].ToString();
                    string title = dr["B_Title"].ToString();
                    string isbn = dr["ISBN"].ToString();
                    string cat = dr["Category"].ToString();
                    string price = dr["Price"].ToString();
                    
                    
                    dr.Close();

                    // Insert new record
                    string insertQuery = "INSERT INTO atc_tbl (UId, PId, Image, B_Title, ISBN, Category, Price, Quantity) " +
                                         "VALUES (" + userId + ", " + productId + ", '" + image + "', '" + title + "', '" + isbn + "', '" + cat + "','" + price + "', 1)";
                    SqlCommand insertCmd = new SqlCommand(insertQuery, cs.startcon());
                    insertCmd.ExecuteNonQuery();
                }
                else
                {
                    dr.Close();
                }
            }
            
        }
        protected void btnAddToCartSelected_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("AddToCart.aspx");
        }

        void display()
        {
            da = new SqlDataAdapter("select * from detl_tbl", cs.startcon());
            ds = new DataSet();
            da.Fill(ds);
            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource
            {
                AllowPaging = true,
                PageSize = 3,
                DataSource = ds.Tables[0].DefaultView,
                CurrentPageIndex = Convert.ToInt32(ViewState["pid"])
            };
            //pg.AllowPaging = true;
            //pg.PageSize = 3;
            //pg.DataSource = ds.Tables[0].DefaultView;
            //pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }
    }
}