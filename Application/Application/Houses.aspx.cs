using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Application.BusinessServiceReference;

namespace Application
{
    public partial class Houses : System.Web.UI.Page
    {
        private BusinessServiceClient _service;

        protected void Page_Init(object sender, EventArgs e)
        {
            _service = new BusinessServiceClient();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string typeId = Request.Params["typeId"];
            if (typeId != null && !typeId.Equals(""))
            {
                HouseList.DataSource = _service.GetHouses().Where(a => a.TypeId.Equals(typeId)).OrderBy(a => a.Name);
                HouseList.DataBind();
            }
        }
    }
}