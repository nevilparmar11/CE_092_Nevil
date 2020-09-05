using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Lab6_Task2
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cosubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["conn_string"].ConnectionString;
            int total = 0;
            SqlCommand cmd = null;
            try
            {
                using (conn)
                {
                    string items = "";
                    string dataquery = "Select [Order].oid,[Product].pid,[Product].pname,[Product].cost from [Order] inner join [Product] on [Order].pid = [Product].pid where [Order].userid = '" + Session["uname"] + "'";
                    cmd = new SqlCommand(dataquery, conn);
                    conn.Open();
                    SqlDataReader sr = cmd.ExecuteReader();
                    while(sr.Read())
                    {
                        items += "Order ID :-" + sr["oid"] + "<br>Product ID :- " + sr["pid"] + "<br>Product name :- " + sr["pname"] + "<br>Product Cost :- " + sr["cost"] + "<br><br>";
                        total += int.Parse(sr["cost"].ToString());
                    }
                    all.Text = items + "<br>Total Cost is : " + total.ToString();
                }
            }
            catch (Exception error)
            {
                Response.Write(error.Message);
                MessageBox.Show("Connection failed!....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}