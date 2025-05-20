using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week2
{
    public partial class transfertext : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntransfer_Click(object sender, EventArgs e)
        {
            txttarget.Text = txtsource.Text;
            txtsource.Text = string.Empty;
        }
    }
}