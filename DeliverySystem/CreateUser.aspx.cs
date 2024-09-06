using System;
using System.Configuration;
using System.Data.SqlClient;

namespace DeliverySystem
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string phoneNumber = textPhoneNumber.Text.Trim();
            string password = textPassword.Text.Trim();

            if (string.IsNullOrEmpty(phoneNumber) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Phone Number and Password are required.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
                return;
            }

          
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Users (PhoneNumber, Password) VALUES (@PhoneNumber, @Password)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    cmd.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "User created successfully.";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            lblMessage.Text = "User creation failed. No rows affected.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }

                        lblMessage.Visible = true;
                    }
                    catch (SqlException ex)
                    {
                        lblMessage.Text = $"SQL Error: {ex.Message}";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Visible = true;
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = $"Error: {ex.Message}";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Visible = true;
                    }
                }
            }
        }

        protected void textPhoneNumber_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
