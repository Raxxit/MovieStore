using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week3
{
    public partial class task7 : System.Web.UI.Page
    {  
        string selectedProduct = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chkprod_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem item in chkprod.Items)
            {
                if (item.Selected && !lbxcart.Items.Contains(new ListItem(item.Text)))
                {
                    lbxcart.Items.Add(item.Text);
                    item.Selected = false;
                }
            }
        }

        protected void lbxcart_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnremove_Click(object sender, EventArgs e)
        {
            for (int i = lbxcart.Items.Count - 1; i >= 0; i--)
            {
                if (lbxcart.Items[i].Selected)
                {
                    lbxcart.Items.RemoveAt(i);
                }
            }
        }
    }
}