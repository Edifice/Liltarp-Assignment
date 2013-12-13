using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Application.BusinessServiceReference;
namespace Application.Admin
{
    public partial class TicketList : System.Web.UI.Page
    {
        private BusinessServiceClient _service;
        protected void Page_Init(object sender, EventArgs e)
        {
            _service = new BusinessServiceClient();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTables();
            }
        }

        private void BindTables()
        {
            tableUnsolved.DataSource = _service.GetUnsolvedTickets();
            tableUnsolved.DataBind();

            tableSolved.DataSource = _service.GetSolvedTickets();
            tableSolved.DataBind();
        }

        protected void tableUnsolved_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "solve")
            {
                _service.SetTicketToSolved(tableUnsolved.DataKeys[e.Item.ItemIndex].ToString(), Session["UserId"].ToString());
                BindTables();
            }else if (e.CommandName == "unsolve")
            {
                _service.SetTicketToUnsolved(tableSolved.DataKeys[e.Item.ItemIndex].ToString(), Session["UserId"].ToString());
                BindTables();
            }
        }

    }
}