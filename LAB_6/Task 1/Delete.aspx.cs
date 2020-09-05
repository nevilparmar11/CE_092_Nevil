using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Lab6_Task1
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["con_string"].ConnectionString;
            string id = dstu_id.Text;
            string deleteq = "Delete from Student where ID = '" + id + "' ";
            SqlCommand cmd = new SqlCommand(deleteq, conn);
            try
            {
                using(conn)
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Record Deleted!....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch(Exception error)
            {
                Response.Write(error.Message);
                MessageBox.Show("Connection Failed!....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}