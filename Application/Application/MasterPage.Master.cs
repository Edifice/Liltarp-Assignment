using System;
using Application.BusinessServiceReference;

namespace Application
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        private BusinessServiceClient _service;

        protected void Page_Init(object sender, EventArgs e)
        {
            _service = new BusinessServiceClient();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude("jquery", "/Vendor/jquery.min.js");
            Page.ClientScript.RegisterClientScriptInclude("bs", "/Vendor/bootstrap/js/bootstrap.min.js");

            houseTypeRepeater.DataSource = _service.GetHouseTypes();
            houseTypeRepeater.DataBind();
        }
    }
}