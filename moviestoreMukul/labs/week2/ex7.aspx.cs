using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using moviestoreMukul.tutorials.week2;

namespace moviestoreMukul.labs.week2
{
    public partial class ex7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblmsg.Text = string.Empty;
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Calculate('+');
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            Calculate('-');
        }

        protected void btnmult_Click(object sender, EventArgs e)
        {
            Calculate('*');
        }

        protected void btndiv_Click(object sender, EventArgs e)
        {
            Calculate('/');
        }

        private void Calculate(char operation)
        {
            double num1, num2, result = 0;
            bool isValid1 = double.TryParse(txtnum1.Text, out num1);
            bool isValid2 = double.TryParse(txtnum2.Text, out num2);

            if (!isValid1 || !isValid2)
            {
                lblmsg.Text = ("Please enter valid numbers.");
                return;
            }

            switch (operation)
            {
                case '+': result = num1 + num2; break;
                case '-': result = num1 - num2; break;
                case '*': result = num1 * num2; break;
                case '/':
                    if (num2 == 0)
                    {
                        lblmsg.Text = ("Cannot divide by zero.");
                        return;
                    }
                    result = num1 / num2;
                    break;
            }

            txtresult.Text = result.ToString();
        }
    }
}