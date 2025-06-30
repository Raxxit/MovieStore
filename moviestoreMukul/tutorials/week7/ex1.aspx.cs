using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace moviestoreMukul.tutorials.week7
{
    public partial class ex1 : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getMovielist();
            }
        }
        private void getMovielist()
        {
            // Create Connection 
            SqlConnection con = new SqlConnection(_conString);
            // Create Command 
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM tblMovies";
            cmd.Connection = con;
            // Create DataAdapter (Refer to slide 8) 

            SqlDataAdapter dad = new SqlDataAdapter(cmd);

            DataTable dtmovies = new DataTable();

            using (dad)
            {
                dad.Fill(dtmovies);
            }

            GrdView1.DataSource = dtmovies;
            GrdView1.DataBind();

        }

        protected void GrdView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GrdView1.PageIndex = e.NewPageIndex;
            getMovielist();
           
        }
    }
}