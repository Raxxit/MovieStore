using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week3
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chk1_CheckedChanged(object sender, EventArgs e)
        {
            if (chk1.Checked)
            {
                lblmsg.Text = "True";
            }
            else
            {
                lblmsg.Text = "False";
            }
        }
    }
}