using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7_Task4
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dbcontext = new DataClasses1DataContext())
            {
                int id = int.Parse(TextBox6.Text);
                Student stu = dbcontext.Students.SingleOrDefault(x => x.sid == id);
                stu.name = TextBox1.Text;
                stu.sem = TextBox2.Text;
                stu.cpi = TextBox3.Text;
                stu.contactno = TextBox4.Text;
                stu.emailid = TextBox5.Text;
                dbcontext.SubmitChanges();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dbcontext = new DataClasses1DataContext())
            {
                int id = int.Parse(TextBox6.Text);
                Student stu = dbcontext.Students.SingleOrDefault(x => x.sid == id);
                TextBox1.Text = stu.name;
                TextBox2.Text = stu.sem;
                TextBox3.Text = stu.cpi;
                TextBox4.Text = stu.contactno;
                TextBox5.Text = stu.emailid;
            }
        }
    }
}