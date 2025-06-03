using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week3
{
    public partial class task8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsToday)
                e.Cell.BackColor = System.Drawing.Color.Yellow;
            else if (e.Day.IsWeekend)
                e.Cell.BackColor = System.Drawing.Color.Green;
            else
                e.Cell.BackColor = System.Drawing.Color.Blue;

            if (e.Day.IsSelected)
                e.Cell.BackColor = System.Drawing.Color.Orange;
        }
    }
}