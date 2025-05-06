using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week2
{
    public partial class ex1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage.Text = "Welcome to this 1st lab exercise";
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            lblmessage.Text = "";
        }
    }
}