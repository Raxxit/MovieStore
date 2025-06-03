using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week3
{
    public partial class task4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgbtndart_Click(object sender, ImageClickEventArgs e)
        {
            int x = e.X;
            int y = e.Y;

            int centerX = 150;
            int centerY = 150;
            int radius = 150;

            double distance = Math.Sqrt(Math.Pow(x - centerX, 2) + Math.Pow(y - centerY, 2));

            if (distance <= radius)
                lblmsg.Text = $"🎯 You hit the target at coords ({x}, {y})";
            else
                lblmsg.Text = $"❌ You missed lmao";

        }
    }
}