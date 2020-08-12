using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OptionalTask
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox textbox2;
            TextBox textbox3;

            textbox2 = (TextBox)PreviousPage.FindControl("TextBox1");
            textbox3 = (TextBox)PreviousPage.FindControl("TextBox2");

            Label1.Text = "Hello " + textbox2.Text + " " + textbox3.Text;
        }
    }
}