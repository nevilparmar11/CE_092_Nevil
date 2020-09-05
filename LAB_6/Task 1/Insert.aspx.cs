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
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void isubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["con_string"].ConnectionString;
            try
            {
                using (conn)
                {
                    string id = stu_id.Text;
                    string name = stu_nm.Text;
                    int sem = int.Parse(stu_sem.Text);
                    string number = stu_num.Text;
                    string email = stu_eid.Text;
                    string insertq = string.Format("insert into Student values('{0}', '{1}', {2}, '{3}', '{4}')", id, name, sem, number, email);
                    SqlCommand cmd = new SqlCommand(insertq, conn);
                    conn.Open();
                    /*cmd.Parameters.AddWithValue("@Name", stu_nm.Text);
                    cmd.Parameters.AddWithValue("@Sem", stu_id.Text);
                    cmd.Parameters.AddWithValue("@Mob_no", stu_num.Text);
                    cmd.Parameters.AddWithValue("@email_id", stu_eid.Text);*/
                    Validate();
                    if (Page.IsValid)
                    {
                        int inserted_row = cmd.ExecuteNonQuery();
                        MessageBox.Show("Record Inserted!", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
            catch(Exception error)
            {
                //Response.Write(error.Message);
                MessageBox.Show("Connection Failed!..", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}