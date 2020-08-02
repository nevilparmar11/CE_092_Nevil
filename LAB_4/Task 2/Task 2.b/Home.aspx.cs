using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace LAB_04_Task2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void statList_SelectedIndexChanged(object sender, EventArgs e)
        { 
                Console.WriteLine("index change was called");
                Console.WriteLine(stateList.SelectedIndex);
                if (stateList.SelectedValue.Equals("-1"))
                {
                    cityList.Items.Clear();
                }
                if (stateList.SelectedValue.Equals("GJ"))
                {
                    cityList.Items.Clear();
                    cityList.Items.Add(new ListItem("Ahmedabad", "AH"));
                    cityList.Items.Add(new ListItem("Vadodara", "VD"));
                }
                if (stateList.SelectedValue.Equals("MH"))
                {
                    cityList.Items.Clear();
                    cityList.Items.Add(new ListItem("Mumbai", "MM"));
                    cityList.Items.Add(new ListItem("Pune", "PN"));
                }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            NameL.Text = fname.Text;
            AgeL.Text = age.Text;
            GenderL.Text = RadioButtonList1.SelectedValue;
            MobileL.Text = number.Text;
            HobbieL.Text = " ";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    HobbieL.Text += CheckBoxList1.Items[i].Text + "\n";
                }
            }
            StateL.Text = stateList.SelectedValue;
            CityL.Text = cityList.SelectedValue;
            PanL.Text = pnumber.Text;
        }

        protected void customValidator(object sender, ServerValidateEventArgs e)
        {
            string regstr = "[AB]\\d{9}";
            Regex reg = new Regex(regstr);
            if (reg.IsMatch(pnumber.Text))
            {
                e.IsValid = true;
            }
            else
            {
                pnumber.Text = "";
                e.IsValid = false;
            }
        }
    }
}