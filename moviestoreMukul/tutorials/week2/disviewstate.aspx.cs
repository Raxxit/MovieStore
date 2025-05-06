using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.tutorials.week2
{
    public partial class disviewstate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Label1.Text = (Int32.Parse(Label1.Text) + 1).ToString();
            Label2.Text = (Int32.Parse(Label2.Text) + 1).ToString();
        }
    }
}