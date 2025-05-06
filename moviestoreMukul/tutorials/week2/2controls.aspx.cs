using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.tutorials.week2
{
    public partial class _2controls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            btn.Text = (Int32.Parse(btn.Text) + 1).ToString();
        }
    }
}