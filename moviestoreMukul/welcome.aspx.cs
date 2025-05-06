using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul
{
    public partial class welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblResult.Text = "Welcome to Visual Studio IDE";
        }

        protected void btnDateTime_Click(object sender, EventArgs e)
        {
            lblResult.Text = DateTime.Now.ToString();
        }
    }
}