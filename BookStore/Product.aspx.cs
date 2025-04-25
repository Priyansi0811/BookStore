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

namespace BookStore
{
    public partial class Product : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        CL_Pro_Class1 cs;

        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString;
        string c1, c2, c3, c4;
        string[] ct = new string[4];
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

        void category()
        {
            for (int i = 0; i < ct.Length; i++)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    ct[i] = CheckBoxList1.Items[i].Text;
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            category();
            if (Button1.Text == "Save")
            {
                for (int i = 0; i < 1; i++)
                {
                    if (ct[i] == "Fiction")
                    {
                        c1 = "Fiction";
                        i++;
                    }
                    else
                    {
                        c1 = "Null";
                        i++;
                    }

                    if (ct[i] == "Non-fiction")
                    {
                        c2 = "Non-fiction";
                        i++;
                    }
                    else
                    {
                        c2 = "Null";
                        i++;
                    }

                    if (ct[i] == "Science")
                    {
                        c3 = "Science";
                        i++;
                    }
                    else
                    {
                        c3 = "Null";
                        i++;
                    }

                    if (ct[i] == "History")
                    {
                        c4 = "History";

                    }
                    else
                    {
                        c4 = "Null";

                    }
                }
                cs.insert(TextBox1.Text, RadioButtonList1.Text, TextBox2.Text, TextBox3.Text, DropDownList1.SelectedValue, c1, c2, c3, c4, TextBox4.Text, DropDownList2.SelectedValue, TextBox5.Text, RadioButtonList2.Text);



                //getcon();
                //category();
                //if (Button1.Text=="Save")
                //{


                //    for(int i = 0; i < 1; i++)
                //    {
                //        if (ct[i] == "Fiction")
                //        {
                //            c1 = "Fiction";
                //            i++;
                //        }
                //        else
                //        {
                //            c1 = "Null";
                //            i++;
                //        }

                //        if (ct[i] == "Non-fiction")
                //        {
                //            c2 = "Non-fiction";
                //            i++;
                //        }
                //        else
                //        {
                //            c2 = "Null";
                //            i++;
                //        }

                //        if (ct[i] == "Science")
                //        {
                //            c3 = "Science";
                //            i++;
                //        }
                //        else
                //        {
                //            c3 = "Null";
                //            i++;
                //        }

                //        if (ct[i] == "History")
                //        {
                //            c4 = "History";

                //        }
                //        else
                //        {
                //            c4 = "Null";

                //        }
                //    }
                //    cmd = new SqlCommand("insert into prod_tbl(Customer_Name,Gender,Phone_No,Address,Country,C1,C2,C3,C4,Book_Name,Language,Quantity,Method)values" + "('" + TextBox1.Text + "','" + RadioButtonList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + c1 + "','" + c2 + "','" + c3 + "','" + c4 + "','" + TextBox4.Text + "','" + DropDownList2.SelectedValue + "','" + TextBox5.Text + "','" + RadioButtonList2.Text + "')", con);
                //    cmd.ExecuteNonQuery();
                //    fillgrid();
                //    empty();
                //    Response.Write("inserted");
                //}
                //else
                //{
                //    //category();
                //    //getcon();

                //    for (int i = 0; i < 1; i++)
                //    {
                //        if (ct[i] == "Fiction")
                //        {
                //            c1 = "Fiction";
                //            i++;
                //        }
                //        else
                //        {
                //            c1 = "Null";
                //            i++;
                //        }

                //        if (ct[i] == "Non-fiction")
                //        {
                //            c2 = "Non-fiction";
                //            i++;
                //        }
                //        else
                //        {
                //            c2 = "Null";
                //            i++;
                //        }

                //        if (ct[i] == "Science")
                //        {
                //            c3 = "Science";
                //            i++;
                //        }
                //        else
                //        {
                //            c3 = "Null";
                //            i++;
                //        }

                //        if (ct[i] == "History")
                //        {
                //            c4 = "History";

                //        }
                //        else
                //        {
                //            c4 = "Null";

                //        }
                //    }
                //    cmd = new SqlCommand("update prod_tbl set Customer_Name='" + TextBox1.Text + "',Gender='" + RadioButtonList1.Text + "',Phone_No='" + TextBox2.Text + "',Address='" + TextBox3.Text + "',Country='" + DropDownList1.SelectedValue + "',C1='" + c1 + "',C2='" + c2 + "',C3='" + c3 + "',C4='" + c4 + "',Book_Name='" + TextBox4.Text + "',Language='" + DropDownList2.SelectedValue + "',Quantity='" + TextBox5.Text + "',Method='" + RadioButtonList2.Text + "' where Id='" + ViewState["id"] + "'", con);
                //    cmd.ExecuteNonQuery();
                //    fillgrid();
                //    empty();

                //}
            }
        }

        void getcon()
        {
            //con = new SqlConnection(s);
            //con.Open();
            cs = new CL_Pro_Class1();
            cs.startcon();
        }

        //void fillgrid()
        //{
        //    getcon();
        //    da = new SqlDataAdapter("select * from prod_tbl", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //}


        

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName == "cmd_edt")
            //{
            //    int id = Convert.ToInt16(e.CommandArgument);
            //    ViewState["id"] = id;
            //    Button1.Text = "Update";
            //    filltext();
            //}
            //else
            //{
            //    getcon();
            //    int id = Convert.ToInt16(e.CommandArgument);
            //    ViewState["id"] = id;
            //    cmd = new SqlCommand("delete from prod_tbl where Id='" + ViewState["id"] + "'", con);
            //    cmd.ExecuteNonQuery();
            //    fillgrid();
            //}
        }

        //void empty()
        //{
        //    TextBox1.Text = "";
        //    RadioButtonList1.ClearSelection();
        //    TextBox2.Text = "";
        //    TextBox3.Text = "";
        //    DropDownList1.ClearSelection();
        //    CheckBoxList1.ClearSelection();
        //    TextBox4.Text = "";
        //    DropDownList2.ClearSelection();
        //    TextBox5.Text = "";
        //    RadioButtonList2.ClearSelection();
        //    Button1.Text = "Save";
        //}

        //public DataSet select(int id)
        //{
        //    getcon();
        //    da = new SqlDataAdapter("select * from prod_tbl where Id='" + id + "'", con);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    return ds;
        //}

        //void filltext() // paring data
        //{
        //    getcon();
        //    ds = new DataSet();
        //    ds = select(Convert.ToInt16(ViewState["id"]));

        //    TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
        //    RadioButtonList1.Text = ds.Tables[0].Rows[0][2].ToString();
        //    TextBox2.Text = ds.Tables[0].Rows[0][3].ToString();
        //    TextBox3.Text = ds.Tables[0].Rows[0][4].ToString();
        //    TextBox4.Text = ds.Tables[0].Rows[0][10].ToString();
        //    TextBox5.Text = ds.Tables[0].Rows[0][12].ToString();
        //    RadioButtonList2.Text = ds.Tables[0].Rows[0][13].ToString();

        //    DropDownList1.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
        //    DropDownList2.SelectedValue = ds.Tables[0].Rows[0][11].ToString();

        //    if (ds.Tables[0].Rows[0][6].ToString() == "Fiction")
        //    {
        //        CheckBoxList1.Items[0].Selected = true;
        //    }
        //    else
        //    {
        //        CheckBoxList1.Items[0].Selected = false;
        //    }

        //    if (ds.Tables[0].Rows[0][7].ToString() == "Non-fiction")
        //    {
        //        CheckBoxList1.Items[1].Selected = true;
        //    }
        //    else
        //    {
        //        CheckBoxList1.Items[1].Selected = false;
        //    }

        //    if (ds.Tables[0].Rows[0][8].ToString() == "Science")
        //    {
        //        CheckBoxList1.Items[2].Selected = true;
        //    }
        //    else
        //    {
        //        CheckBoxList1.Items[2].Selected = false;
        //    }

        //    if (ds.Tables[0].Rows[0][9].ToString() == "History")
        //    {
        //        CheckBoxList1.Items[3].Selected = true;
        //    }
        //    else
        //    {
        //        CheckBoxList1.Items[3].Selected = false;
        //    }

        //}

    }
}