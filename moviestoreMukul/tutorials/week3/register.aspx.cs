using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace moviestoreMukul.tutorials.week3
{
    public partial class register : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtfname.Focus();
                //txtfname.BorderColor = System.Drawing.Color.Green;
                //txtfname.ForeColor = System.Drawing.Color.Red;

                //ListItem lidef = new ListItem("Choose City" ,"-1");
                //ListItem li1 = new ListItem("Port-Louis", "001");
                //ListItem li2 = new ListItem("Tamatave", "002");
                //ListItem li3 = new ListItem("Marseille", "003");

                //ddlcity.Items.Add(lidef);
                //ddlcity.Items.Add(li1);
                //ddlcity.Items.Add(li2);
                //ddlcity.Items.Add(li3);

                string physicalPath = Server.MapPath("~/app_Data/cities.xml");
                DataSet dscitites = new DataSet();
                dscitites.ReadXml(physicalPath);

                ddlcity.DataSource = dscitites;
                ddlcity.DataTextField = "cityname";
                ddlcity.DataValueField = "cityId";
                ddlcity.DataBind();

                ddlcity.Items.Insert(0, "Choose city");

                GetCountrylist();
                ListItem licountry = new ListItem("Choose Country", "-1");
                ddlcountry.Items.Insert(0, licountry);

            }

            rvdob.MinimumValue = DateTime.Now.AddYears(-45).ToShortDateString();
            rvdob.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
            rvdob.Type = ValidationDataType.Date;


        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                Response.Redirect("~/tutorials/week2/datetime");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtfname.Text = "";
            ddlcountry.SelectedIndex = 0;
            radmale.Checked = true;
            radfemale.Checked = false;
            chkagreement.Checked = false;
            imgsmiley.Visible = false;


        }

        protected void txtafmovies_TextChanged(object sender, EventArgs e)
        {
            int counter = txtafmovies.Text.Length;
            notif.InnerHtml = counter.ToString();
        }

        protected void chkagreement_CheckedChanged(object sender, EventArgs e)
        {
            imgsmiley.ImageUrl = chkagreement.Checked ? "~/images/smiley.jpg" : "";
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblmessage.Text = "You have selected " + ddlcountry.SelectedItem.Text;
        }

        protected void customvalidatorpass_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length <= 5 && args.Value.Length <= 18)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        private void GetCountrylist()
        {
            using (SqlConnection conn = new SqlConnection(_conString))
            {
                using (SqlCommand scmd = new SqlCommand())
                {
                    scmd.Connection = conn;
                    scmd.CommandType = CommandType.Text;
                    scmd.CommandText = "SELECT * FROM tblCountry";
                    conn.Open();
                    using (SqlDataReader reader = scmd.ExecuteReader())
                    {
                        // Bind the data to the DropDownList
                        ddlcountry.DataSource = reader;
                        ddlcountry.DataTextField = "CountryName";
                        ddlcountry.DataValueField = "CountryId";
                        ddlcountry.DataBind();
                    }
                }
            }



        }
    }
}