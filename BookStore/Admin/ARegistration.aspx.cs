using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BookStore.Admin
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Cate_class cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }

        void getcon()
        {
            cs = new Cate_class();
            cs.startcon();

        }
        void fillgrid()
        {
            cs = new Cate_class();
            getcon();
            GridView1.DataSource = cs.filldata2();
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}