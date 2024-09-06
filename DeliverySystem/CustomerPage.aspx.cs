using System;
using System.Web.UI;

namespace DeliverySystem
{
    public partial class CustomerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["PhoneNumber"] == null)
                {
                    Response.Redirect("~/CustomerLogin.aspx");
                }
               
            }
        }

        private void BindOrders()
        {
            string phoneNumber = Session["PhoneNumber"].ToString();
            Customer.SelectParameters["CustPhoneNo"].DefaultValue = phoneNumber;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}

