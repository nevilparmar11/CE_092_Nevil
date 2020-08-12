using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB5_TASK2
{
    public partial class Home : System.Web.UI.Page
    {
        //List<string> it = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                ssname.Text = "Hello " + Session["Username"].ToString() + ", Welcome to E-Shop";
            }
        }

        protected void MainItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                MainPanel.Visible = true;
                selectedRadioButton.Text = MainItems.SelectedValue;
                if (MainItems.SelectedValue.Equals("Books"))
                {
                    ListBox1.Items.Clear();
                    ListBox1.Items.Add(new ListItem("All About Love", "5999"));
                    ListBox1.Items.Add(new ListItem("Desert Solitaire", "6999"));
                    ListBox1.Items.Add(new ListItem("Disgrace", "1799"));
                    ListBox1.Items.Add(new ListItem("Giovanni's Room", "1599"));
                    ListBox1.Items.Add(new ListItem("The Handmaid's Tale ", "1899"));

                }
                else if (MainItems.SelectedValue.Equals("Electronics"))
                {
                    ListBox1.Items.Clear();
                    ListBox1.Items.Add(new ListItem("Laptop", "50999"));
                    ListBox1.Items.Add(new ListItem("iPhone", "101999"));
                    ListBox1.Items.Add(new ListItem("Desktop Pc", "30999"));
                    ListBox1.Items.Add(new ListItem("Wireless charger", "1599"));
                    ListBox1.Items.Add(new ListItem("OTG Connecter", "799"));
                }
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem var in ListBox1.Items)
            {
                if (var.Selected)
                {
                    Session[var.Text] = var.Value;
                    selectedItems.Text += var.Text + "<br>";
                }
            }
        }
        protected void placeOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("2_Order.aspx");
        }
    }
}