using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Application.BusinessServiceReference;

namespace Application.Admin
{
    public partial class HouseList : System.Web.UI.Page
    {
        private BusinessServiceClient _service;

        protected void Page_Init(object sender, EventArgs e)
        {
            _service = new BusinessServiceClient();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            List.DataSource = _service.GetHouses().OrderBy(a => a.Name);
            List.DataBind();
        }
    }
}