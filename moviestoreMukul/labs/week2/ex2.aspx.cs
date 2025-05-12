using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week2
{
    public partial class ex2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage.Text = "Now you see me";
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            lblmessage.Visible = true;
        }

        protected void btnhide_Click(object sender, EventArgs e)
        {
            lblmessage.Visible = false;
        }
    }
}