using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB5_TASK2
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "";
            int total_value = 0;
            foreach (string s in Session.Keys)
            {
                if (s != "Username")
                {
                    str += s + " " + Session[s] + "  rupee<br><br>";
                    total_value += int.Parse(Session[s].ToString());
                }
            }
            str += "Total cost : " + total_value + "  Indian rupee";
            cost.Text = str;
        }
    }
}