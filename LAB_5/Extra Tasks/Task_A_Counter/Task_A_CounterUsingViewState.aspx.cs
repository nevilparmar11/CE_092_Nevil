using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OptionalTask
{
    public partial class Task_A_CounterUsingViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdIncrement_Click(object sender, EventArgs e)
        {
            int counter;
            if (ViewState["Counter"] == null)
            {
                counter = 1;
            }
            else
            {
                counter = (int)ViewState["Counter"] + 1;
            }

            ViewState["Counter"] = counter;
            lblCount.Text = "Counter: " + counter.ToString();
        }
    }
}