using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB5_TASK2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = uname.Text;
            string password = passwd.Text;
            if (username.Equals("admin") && password.Equals("admin"))
            {
                Session["Username"] = uname.Text;
                Response.Redirect("2_Home.aspx");
            }
            else
            {
                loginerr.Text = "Invalid Credentials";
            }
        }
    }
}