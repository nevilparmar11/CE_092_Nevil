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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void usubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["conn_string"].ConnectionString;
            string searchpasswd = "select * from Users where userid = '" + unm.Text + "' ";
            Session["uname"] = unm.Text;
            SqlCommand cmd = new SqlCommand(searchpasswd, conn);
            try
            {
                using(conn)
                {
                    conn.Open();
                    SqlDataReader sr = cmd.ExecuteReader();
                    if (sr.Read())
                    {
                        if (upasswd.Text == sr[1].ToString())
                        {
                            Response.Redirect("Product.aspx");
                        }
                        else
                        {
                            MessageBox.Show("Invalid Credential!....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                    sr.Close();
                }
            }
            catch(Exception error)
            {
                //MessageBox.Show("Connection failed!....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}