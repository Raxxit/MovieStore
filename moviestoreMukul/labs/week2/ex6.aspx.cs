using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls;

namespace moviestoreMukul.labs.week2
{
    public partial class ex6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddloption_TextChanged(object sender, EventArgs e)
        {
            if (ddloption.SelectedValue == "1")
            {
                Response.Redirect("~/labs/week2/ex1");
            }
            if (ddloption.SelectedValue == "2")
            {
                Response.Redirect("~/labs/week2/ex2");
            }
        }
    }
}