using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookStore
{
    public partial class CheckOut : System.Web.UI.Page
    {
        CL_Pro_Class1 cs = new CL_Pro_Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack && Session["user"] != null)
            {
                LoadCheckoutDetails();
            }


        }

        void LoadCheckoutDetails()
        {
            int userId = Convert.ToInt32(Session["user"]);
            string query = "SELECT B_Title, Price, Quantity FROM atc_tbl WHERE UId = " + userId;

            SqlDataAdapter da = new SqlDataAdapter(query, cs.startcon());
            DataTable dt = new DataTable();
            da.Fill(dt);

            dt.Columns.Add("Total", typeof(decimal));

            decimal grandTotal = 0;
            foreach (DataRow row in dt.Rows)
            {
                string priceText = row["Price"].ToString();
                string quantityText = row["Quantity"].ToString();

                priceText = priceText.Replace("₹", "").Replace("/-", "").Trim();

                decimal price = Convert.ToDecimal(priceText);
                int quantity = Convert.ToInt32(quantityText);

                decimal total = price * quantity;
                row["Total"] = total;

                grandTotal += total;
            }

            GridViewCheckout.DataSource = dt;
            GridViewCheckout.DataBind();

            lblTotalAmount.Text = "Grand Total: ₹" + grandTotal.ToString("F2");
        }

        protected void btnConfirmOrder_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["user"]);

            string userName = txtName.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string email = txtEmail.Text.Trim();

            if (string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(email))
            {
                lblMessage.Text = " Please fill all required fields.";
                return;
            }

            string paymentMethod = rdoCOD.Checked ? "Cash on Delivery" : rdoCard.Checked ? "Card" : rdoUPI.Checked ? "UPI" : "Unknown";

            DataTable cartTable = new DataTable();

            using (SqlConnection con = cs.startcon())
            {
                string fetchQuery = "SELECT * FROM atc_tbl WHERE UId = " + userId;
                using (SqlDataAdapter da = new SqlDataAdapter(fetchQuery, con))
                {
                    da.Fill(cartTable);
                }

                foreach (DataRow row in cartTable.Rows)
                {
                    string priceText = row["Price"].ToString().Replace("₹", "").Replace("/-", "").Trim();
                    decimal price = decimal.Parse(priceText);
                    int quantity = Convert.ToInt32(row["Quantity"]);
                    decimal total = price * quantity;


                    string insertQuery = "INSERT INTO Orders " + "(UId, User_Name, Phone, Email, HouseNo, BlockNo, Street_Address, City, State, Pincode, Product_Id, B_Title, Quantity, Price, TotalAmount, PaymentMethod) " + "VALUES (" + userId + ", " + "'" + userName.Replace("'", "''") + "', " + "'" + phone.Replace("'", "''") + "', " + "'" + email.Replace("'", "''") + "', " + "'" + txtHouseNo.Text.Replace("'", "''") + "', " + "'" + txtBlock.Text.Replace("'", "''") + "', " + "'" + txtAddress.Text.Replace("'", "''") + "', " + "'" + txtCity.Text.Replace("'", "''") + "', " + "'" + txtState.Text.Replace("'", "''") + "', " + "'" + txtPincode.Text.Replace("'", "''") + "', " + row["PId"] + ", " + "'" + row["B_Title"].ToString().Replace("'", "''") + "', " + quantity + ", " + price.ToString("F2") + ", " + total.ToString("F2") + ", " + "'" + paymentMethod.Replace("'", "''") + "'" + ")";

                    using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }

                using (SqlCommand deleteCmd = new SqlCommand("DELETE FROM atc_tbl WHERE UId = " + userId, con))
                {
                    deleteCmd.ExecuteNonQuery();
                }
            }

            Response.Redirect("OrderSuccess.aspx");
        }
    }
}