using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB5_TASK1
{
    public partial class CookieForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void csubmit_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            errmsg1.Visible = false;
            HttpCookie cookieForm = new HttpCookie("cookieForm");
            cookieForm["vfname"] = fname.Text;
            cookieForm["vage"] = age.Text;
            cookieForm["vgender"] = gender.SelectedValue;
            cookieForm["vnumber"] = number.Text;
            cookieForm["vsubject"] = subject.Text;
            Response.Cookies.Add(cookieForm);
        }

        protected void cdestroy_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            errmsg1.Visible = false;
            if (Request.Cookies["cookieForm"] != null)
            {
                Response.Cookies["cookieForm"].Expires = DateTime.Now.AddDays(-1);
            }
        }

        protected void cview_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            errmsg1.Visible = false;
            if (Request.Cookies["cookieForm"] != null)
            {
                HttpCookie tcookie = Request.Cookies["cookieForm"];
                fnameL.Text = tcookie["vfname"];
                ageL.Text = tcookie["vage"];
                genderL.Text = tcookie["vgender"];
                numberL.Text = tcookie["vnumber"];
                subjectL.Text = tcookie["vsubject"];
                Panel1.Visible = true;
            }
            else
            {
                errmsg1.Visible = true;
            }
        }
    }
}