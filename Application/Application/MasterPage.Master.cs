using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude("jquery", "/Vendor/jquery.min.js");
            Page.ClientScript.RegisterClientScriptInclude("bs", "/Vendor/bootstrap/js/bootstrap.min.js");
        }
    }
}