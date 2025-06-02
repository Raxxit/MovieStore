using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.tutorials.week5
{
    public partial class showaddress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ltlResults.Text = ucbilling.Street + "<br>";
            ltlResults.Text += ucbilling.City + "<br>";
            ltlResults.Text += ucbilling.State + "<br>";
            ltlResults.Text += ucbilling.PostalCode + "<br>";
            ltlResults.Text += ucshipping.Street + "<br>";
            ltlResults.Text += ucshipping.City + "<br>";
            ltlResults.Text += ucshipping.State + "<br>";
            ltlResults.Text += ucshipping.PostalCode + "<br>";

        }
    }
}