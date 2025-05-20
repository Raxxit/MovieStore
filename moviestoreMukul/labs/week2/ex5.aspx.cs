using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week2
{
    public partial class ex5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int currenthour = DateTime.Now.Hour;
            if (currenthour > 12){

                hyprsession.Text = "Visit Afternoon session";
                hyprsession.NavigateUrl = "~/labs/week2/ex1.aspx";

            }
            else
            {
                hyprsession.Text = "Visit Morning session";
                hyprsession.NavigateUrl = "~/labs/week2/ex2.aspx";
            }
        }
    }
}