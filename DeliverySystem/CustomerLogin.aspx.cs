using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;

namespace DeliverySystem
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblError.Text = string.Empty;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string phoneNumber = txtPhone.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (ValidateUser(phoneNumber, password))
            {
                Session["PhoneNumber"] = phoneNumber;
                Response.Redirect("~/CustomerPage.aspx");
            }
            else
            {
                lblError.Text = "Invalid phone number or password.";
            }
        }

        private bool ValidateUser(string phoneNumber, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "SELECT COUNT(*) FROM Users WHERE PhoneNumber = @PhoneNumber AND Password = @Password";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                cmd.Parameters.AddWithValue("@Password", password);

                con.Open();
                int count = (int)cmd.ExecuteScalar();

                return count > 0;
            }
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {
            // Optional: Add logic if needed
        }
    }
}

