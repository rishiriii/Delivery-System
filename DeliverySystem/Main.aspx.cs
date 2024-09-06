using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Web.UI;

namespace DeliverySystem
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerLogin.aspx");
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeLogin.aspx");
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CreateUser.aspx");
        }
    }
}
