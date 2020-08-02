using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_04_Task2
{
    public partial class Image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void handleVisibility(object sender, EventArgs e)
        {
            Image1.Visible = !Image1.Visible;
            if (Image1.Visible)
            {
                view.Text = "hide";
            }
            else
            {
                view.Text = "view";
            }
        }
    }
}