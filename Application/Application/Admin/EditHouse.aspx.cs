using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Application.BusinessServiceReference;

namespace Application.Admin
{
    public partial class EditHouse : System.Web.UI.Page
    {
        private BusinessServiceClient _service;
        private string id = "";

        protected void Page_Init(object sender, EventArgs e)
        {
            _service = new BusinessServiceClient();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["id"] != null)
                if (!Request.Params["id"].Equals(""))
                {
                    HouseSerializable house = _service.GetHouseById(Request.Params["id"]);
                    id = house.Id;

                    form_id.Text = house.Id;
                    if (!IsPostBack)
                    {
                        form_houseType.SelectedValue = house.TypeId;
                        form_desc.Text = house.Description;
                        form_name.Text = house.Name;
                        form_img.Text = house.Image;
                    }
                }

            form_houseType.DataSource = _service.GetHouseTypes();
            form_houseType.DataBind();

        }

        protected void form_save_Click(object sender, EventArgs e)
        {
            var a = form_desc.Text;
            _service.UpdateHouse(new House()
            {
                ID = id,
                TypeID = form_houseType.SelectedValue,
                Description = form_desc.Text,
                Name = form_name.Text,
                Image = form_img.Text
            });
        }
    }
}