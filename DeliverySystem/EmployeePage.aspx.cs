using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace DeliverySystem
{
    public partial class EmployeePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int orderId;
            if (int.TryParse(textorderId.Text, out orderId))
            {
                UpdateOrderStatus(orderId);
                
                GridView1.DataBind();
            }
            else
            {
                
            }
        }

        private void UpdateOrderStatus(int orderId)
        {
            string query = "UPDATE Orders SET Status = 'Delivered' WHERE OrderId = @OrderId";
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@OrderId", orderId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        
            protected void Button2_Click(object sender, EventArgs e)
            {
                string orderId = textorderId.Text.Trim();

                
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "DELETE FROM Orders WHERE OrderId = @OrderId";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@OrderId", orderId);

                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Order deleted successfully.";
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            GridView1.DataBind();
                    }
                        else
                        {
                            lblMessage.Text = "Order ID not found.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }

                        lblMessage.Visible = true;
                    }
                }
            }
        

        protected void Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddOrder.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
