using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_04_Task2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginHandler(object sender, EventArgs e)
        {
            string username = uname.Text;
            string password = upasswd.Text;
            if (username.Equals("admin") && password.Equals("admin"))
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}