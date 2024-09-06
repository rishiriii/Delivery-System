using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace DeliverySystem
{
    public partial class AddOrder : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string customer = txtCustName.Text;
            string reciver = txtRecName.Text;
            string address = txtAddress.Text;
            string shipmentId = txtShipmentId.Text;
            string shipmentPartner = txtShipmentPartner.Text;
            string custPhoneNo = txtCustPhoneNo.Text;
            string deliName = txtDeliName.Text;
            string status = txtStatus.Text;

            
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "INSERT INTO Orders (Sender, Reciver, Address, ShipmentId, ShipmentPartner, CustPhoneNo, Deli_name, Status) " +
                           "VALUES (@Customer, @Reciver, @Address, @ShipmentId, @ShipmentPartner, @CustPhoneNo, @DeliName, @Status)";

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Customer", customer);
                    cmd.Parameters.AddWithValue("@Reciver", reciver);
                    cmd.Parameters.AddWithValue("@Address", address);
                    cmd.Parameters.AddWithValue("@ShipmentId", shipmentId);
                    cmd.Parameters.AddWithValue("@ShipmentPartner", shipmentPartner);
                    cmd.Parameters.AddWithValue("@CustPhoneNo", custPhoneNo);
                    cmd.Parameters.AddWithValue("@DeliName", deliName);
                    cmd.Parameters.AddWithValue("@Status", status);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "Order added successfully!";
                    ClearFields();
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }

        private void ClearFields()
        {
            txtCustName.Text = "";
            txtRecName.Text = "";
            txtAddress.Text = "";
            txtShipmentId.Text = "";
            txtShipmentPartner.Text = "";
            txtCustPhoneNo.Text = "";
            txtDeliName.Text = "";
            txtStatus.Text = "";
        }

        protected void btnGoBack_Click(object sender, EventArgs e)
        {
         
            Response.Redirect("~/EmployeePage.aspx");
        }

        protected void txtRecName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
