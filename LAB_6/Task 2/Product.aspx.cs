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
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void place_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["conn_string"].ConnectionString;
            try
            {
                using(conn)
                {
                    conn.Open();
                    int rows;
                    foreach (string data in Session.Keys)
                    {
                        if (data != "uname")
                        {
                            string fstring = "insert into [Order] (userid, pid) values (@userid, @pid)";
                            SqlCommand cmd = new SqlCommand(fstring, conn);
                            cmd.Parameters.AddWithValue("@userid", Session["uname"].ToString());
                            cmd.Parameters.AddWithValue("@pid", Session[data].ToString());
                            rows = cmd.ExecuteNonQuery();
                        }
                    }
                    MessageBox.Show("Order Done!....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch(Exception error)
            {
                Response.Write(error.Message);
                MessageBox.Show("Connection failed!....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem li in ListBox1.Items)
            {
                if (li.Selected)
                {
                    Session[li.Text] = li.Value;
                }
            }
        }

        protected void dview_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }
    }
}