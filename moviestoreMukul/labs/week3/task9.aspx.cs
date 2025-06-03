using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.labs.week3
{
    public partial class task9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Next1_Click(object sender, EventArgs e)
        {
            mvBooking.ActiveViewIndex = 1;
        }

        protected void Next2_Click(object sender, EventArgs e)
        {
            DateTime depart = calDepart.SelectedDate;
            DateTime ret = calReturn.SelectedDate;

            if (depart == DateTime.MinValue || ret == DateTime.MinValue)
            {
                lblError.Text = "A valid Date needs to be selected!";
                return;
            }

            if (depart < DateTime.Today)
            {
                lblError.Text = "Departure date cannot be in the past!";
                return;
            }

            if (depart >= ret)
            {
                lblError.Text = "Departure must be earlier than return date!";
                return;
            }

            lblSummary.Text = $"Adults: {txtAdults.Text}, Children: {txtChildren.Text}<br />" +
                              $"Depart: {depart.ToShortDateString()}, Return: {ret.ToShortDateString()}";
            lblError.Text = "";
            mvBooking.ActiveViewIndex = 2;
        }


    }
}