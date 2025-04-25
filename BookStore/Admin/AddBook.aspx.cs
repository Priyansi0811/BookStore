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
    public partial class AddBook : System.Web.UI.Page
    {
        CL_Pro_Class1 cs;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            imgupload();
            getcon();
            cs.addbook(fnm, TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text);
        }

        void getcon()
        {
            cs = new CL_Pro_Class1();
            cs.startcon();
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