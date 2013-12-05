using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Application.BusinessServiceReference;

namespace Application
{
    public partial class Contact : System.Web.UI.Page
    {
        private BusinessServiceClient service;

        protected void Page_Init(object sender, EventArgs e)
        {
            service = new BusinessServiceClient();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ddHouse.DataSource = service.GetHouses();
            ddHouse.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var ticket = new TicketSerializable()
            {
                Email = txtEmail.Text,
                Name = txtName.Text,
                Phone = txtPhone.Text
            };
        }
    }
}