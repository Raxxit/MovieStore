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
    public partial class details : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetMovies();
        }
        private void GetMovies()
        {
            using (SqlConnection conn = new SqlConnection(_conString))
            {

                using (SqlCommand scmd = new SqlCommand())
                {
                    scmd.Connection = conn;
                    scmd.CommandType = CommandType.Text;

                   int qs = Convert.ToInt32(Request.QueryString["id"]);

                    scmd.CommandText = "SELECT * FROM tblmovies where movie_id = " + qs ;

                    conn.Open();

                    using (SqlDataReader reader = scmd.ExecuteReader())
                    {
                        // Bind the data to the Repeater 
                        DetailsView1.DataSource = reader;
                        DetailsView1.DataBind();
                    }
                }
            }
        }
    }
}