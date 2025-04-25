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
    public partial class Category : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        Cate_class cs;
        SqlCommand cmd;

        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

        }

        void getcon()
        {
            cs = new Cate_class();
            cs.startcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            imgupload();

            getcon();
            cs.cateadd(fnm, cnm.Text, cdes.Text);

        }

        void imgupload()
        {
            if (fldimg.HasFile)
            {
                fnm = "image/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        }


    }
}