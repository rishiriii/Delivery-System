using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;

namespace DeliverySystem
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string empId = txtEmpId.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (ValidateAdmin(empId, password))
            {
                FormsAuthentication.SetAuthCookie(empId, false);
                Response.Redirect("~/EmployeePage.aspx");
            }
            else
            {
                lblError.Text = "Invalid Employee ID or Password.";
            }
        }

        private bool ValidateAdmin(string empId, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "SELECT COUNT(*) FROM Admin WHERE EmpId = @EmpId AND Password = @Password";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@EmpId", empId);
                cmd.Parameters.AddWithValue("@Password", password);

                con.Open();
                int count = (int)cmd.ExecuteScalar();

                return count > 0;
            }
        }
    }
}
