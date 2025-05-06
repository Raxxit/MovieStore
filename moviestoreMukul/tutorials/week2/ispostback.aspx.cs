using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.tutorials.week2
{
    public partial class ispostback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Create collection of items
                ArrayList items = new ArrayList();
                items.Add("Apples");
                items.Add("Oranges");
                // Bind to DropDownList
                DropDownList1.DataSource = items;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedItem.Text;
        }
    }
}