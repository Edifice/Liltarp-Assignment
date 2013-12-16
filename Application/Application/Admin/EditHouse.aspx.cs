using System;
using Application.BusinessServiceReference;

namespace Application.Admin
{
    public partial class EditHouse : System.Web.UI.Page
    {
        private BusinessServiceClient _service;
        public string Id = "";

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
                    Id = house.Id;

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
                ID = Id,
                TypeID = form_houseType.SelectedValue,
                Description = form_desc.Text,
                Name = form_name.Text,
                Image = form_img.Text
            });
        }

        protected void form_delete_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Id))
            {
                _service.RemoveHouse(Id);
                Response.Redirect("~/Admin/HouseList.aspx");
            }
        }
    }
}