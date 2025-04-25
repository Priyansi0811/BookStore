using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BookStore.Admin;
using System.Configuration;

namespace BookStore
{
    public partial class AddToCart : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        CL_Pro_Class1 cs = new CL_Pro_Class1();
        
        

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            displays();
            if (!IsPostBack)
            {
                LoadUserCart();
            }

            //if (Session["user"] != null)
            //{
            //    lbl_welcome.Text = "WELCOME!..." + Session["user"];
            //}
            //else
            //{
            //    Response.Redirect("login.aspx");
            //}


        }

        void LoadUserCart()
        {
            getcon();
            int userId = Convert.ToInt32(Session["user"]);
            da = new SqlDataAdapter("SELECT * FROM atc_tbl WHERE UId = " + userId, cs.startcon());
            ds = new DataSet();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        void getcon()
        {
            cs = new CL_Pro_Class1();
            cs.startcon();
        }

        void displays()
        {
            //if (Session["UId"] != null)
            //{
            //    int Uid = Convert.ToInt32(Session["UId"]);

            //    con = startcon();
            //    string query = "SELECT * FROM Atc_tbl WHERE UId = '" + Uid + "'";
            //    da = new SqlDataAdapter(query, con);
            //    ds = new DataSet();
            //    da.Fill(ds);
            //    con.Close();

            //    DataList1.DataSource = ds;
            //    DataList1.DataBind();
            //}


            if (Convert.ToInt16(Request.QueryString["aid"]) != 0)
            {
                //int id = Convert.ToInt16(Request.QueryString["id"]);
                getcon();
                da = new SqlDataAdapter("Select * from detl_tbl Where PId='" + Request.QueryString["aid"] + "' ", cs.startcon());
                ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            int productId = Convert.ToInt32(e.CommandArgument);
            int userId = Convert.ToInt32(Session["user"]);
            getcon();

            if (e.CommandName == "Increase")
            {
                string update = "UPDATE atc_tbl SET Quantity = Quantity + 1 WHERE UId = " + userId + " AND PId = " + productId;
                SqlCommand cmd = new SqlCommand(update, cs.startcon());
                cmd.ExecuteNonQuery();
            }
            else if (e.CommandName == "Decrease")
            {
                string select = "SELECT Quantity FROM atc_tbl WHERE UId = " + userId + " AND PId = " + productId;
                SqlCommand checkCmd = new SqlCommand(select, cs.startcon());
                object result = checkCmd.ExecuteScalar();

                if (result != null && Convert.ToInt32(result) > 1)
                {
                    string update = "UPDATE atc_tbl SET Quantity = Quantity - 1 WHERE UId = " + userId + " AND PId = " + productId;
                    SqlCommand cmd = new SqlCommand(update, cs.startcon());
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    string delete = "DELETE FROM atc_tbl WHERE UId = " + userId + " AND PId = " + productId;
                    SqlCommand cmd = new SqlCommand(delete, cs.startcon());
                    cmd.ExecuteNonQuery();
                }
            }
            else if (e.CommandName == "Remove")
            {
                string delete = "DELETE FROM atc_tbl WHERE UId = " + userId + " AND PId = " + productId;
                SqlCommand cmd = new SqlCommand(delete, cs.startcon());
                cmd.ExecuteNonQuery();
            }

            LoadUserCart();

            //if (e.CommandName == "cmd_remove_item")
            //{
            //    int Pid = Convert.ToInt32(e.CommandArgument);
            //    if (Session["UId"] != null)
            //    {
            //        int Uid = Convert.ToInt32(Session["UId"]);

            //        con = cs.startcon();
            //        string query = "DELETE FROM atc_tbl WHERE UId = '" + Uid + "' AND PId = '" + Pid + "'";
            //        cmd = new SqlCommand(query, con);
            //        cmd.ExecuteNonQuery();
            //        con.Close();

            //        displays();
            //    }
            //}
            //else if (e.CommandName == "cmd_chk")
            //{
            //    int atcId = Convert.ToInt32(e.CommandArgument);
            //    Response.Redirect($"Checkout.aspx?atcid={atcId}"); // Pass AtcId for checkout

            //    //int id = (Convert.ToInt32(e.CommandArgument));
            //    //Response.Redirect("Checkout.aspx?id=" + id);
            //}


        }







        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //getcon();
            //PId = Convert.ToInt16(Session["PId"]);
            //UId = Convert.ToInt16(Session["UId"]);
            //cmd = new SqlCommand("delete from atc_tbl Where UId = '" + UId + "' AND PId = '" + PId + "'  ", con);
            //cmd.ExecuteNonQuery();
            //displays();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGoToCart_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CheckOut.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}