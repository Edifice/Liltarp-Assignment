using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Application.BusinessServiceReference;

namespace Application.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        private BusinessServiceClient service;

        protected void Page_Init(object sender, EventArgs e)
        {
            service = new BusinessServiceClient();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnOk_Click(object sender, EventArgs e)
        {
            string userId = service.CheckLogin(txtEmail.Text, txtPassword.Text);

            if (userId != null) //valid login
            {
                Session["UserId"] = userId;
                Response.Redirect("HouseList.aspx");
            }

            alert.Text = "Wrong User name or Password!";
            txtEmail.Text = "";
            txtPassword.Text = "";
        }
    }
}