using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week2
{
    public partial class ex4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int currenttime = DateTime.Now.Hour;
            if (currenttime > 12)
            {
                lblgreeting.Text = "Good Afternoon";
            }
            else
            {
                lblgreeting.Text = "Good Morning";
            }

        }
    }
}