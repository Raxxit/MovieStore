using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week3
{
    public partial class task5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnrand_Click(object sender, EventArgs e)
        {
            Random rand = new Random();
            int index = rand.Next(1, 4);

            switch (index)
            {
                case 1:
                    imgrand.ImageUrl = "~/images/1.jpg";
                    break;
                case 2:
                    imgrand.ImageUrl = "~/images/2.jpg";
                    break;
                case 3:
                    imgrand.ImageUrl = "~/images/3.jpg";
                    break;
            }
        }
    }
}