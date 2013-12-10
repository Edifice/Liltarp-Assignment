using System;
using Application.BusinessServiceReference;

namespace Application
{
    public partial class Contact : System.Web.UI.Page
    {
        private BusinessServiceClient _service;

        protected void Page_Init(object sender, EventArgs e)
        {
            _service = new BusinessServiceClient();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ddHouse.DataSource = _service.GetHouses();
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