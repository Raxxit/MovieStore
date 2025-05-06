using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.tutorials.week2
{
    public partial class viewsequence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Page Load";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text += "<br />Button Click";
        }

        void Page_PreRender()
        {
            Label1.Text += "<br />Page PreRender";
        }
    }
}