using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Windows.Forms;

namespace Lab6_Task1
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void esearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["con_string"].ConnectionString;
            string searchq = "select * from Student where ID ='" + estu_id.Text + "' ";
            SqlCommand cmd = new SqlCommand(searchq, conn);
            try
            {
                using(conn)
                {
                    conn.Open();
                    SqlDataReader sr = cmd.ExecuteReader();
                    if (sr.Read())
                    {
                        Panel1.Visible = true;
                        estu_nm.Text = sr[1].ToString();
                        estu_sem.Text = sr[2].ToString();
                        estu_num.Text = sr[3].ToString();
                        estu_eid.Text = sr[4].ToString();
                    }
                    else 
                    {
                        MessageBox.Show("Cannot find the record...", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    sr.Close();
                }
            }
            catch(Exception error)
            {
                Response.Write(error.Message);
                MessageBox.Show("Connection failed!.....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        protected void esubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["con_string"].ConnectionString;
            string name = estu_nm.Text;
            int sem = int.Parse(estu_sem.Text);
            string number = estu_num.Text;
            string email = estu_eid.Text;
            string id = estu_id.Text;
            string updateq = string.Format("update Student set Name = '{0}', Sem = {1}, Mob_no = '{2}', email_id = '{3}' where ID = '{4}'", name, sem, number, email, id);
            SqlCommand cmd1 = new SqlCommand(updateq, conn);
            try
            {
                using(conn)
                {
                    conn.Open();
                    Validate();
                    if (Page.IsValid)
                    {
                        cmd1.ExecuteNonQuery();
                        MessageBox.Show("Record updated!.....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
            catch(Exception error)
            {
                Response.Write(error.Message);
                MessageBox.Show("Connection failed!.....", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}