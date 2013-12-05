using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnOk_Click(object sender, EventArgs e)
        {
            
            string strcon = "Data Source=.;uid=sa;pwd=Password$2;database=master";
            SqlConnection con = new SqlConnection(strcon);
 
            SqlCommand com = new SqlCommand("CheckUser", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("E-mail", TextEmail.Text);
            SqlParameter p2 = new SqlParameter("Password", TextPassword.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
               Labelinfo.Text = "Login successful.";
            }
 
            else
            {
                Labelinfo.Text = "Invalid username or password.";
 
            }
        }
        

        protected void BtnBack_Click(object sender, EventArgs e)
        {

        }
    }
}