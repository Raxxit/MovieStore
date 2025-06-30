using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace moviestoreMukul.tutorials.week6
{
    public partial class stats : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
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
                    scmd.CommandText = "SELECT COUNT (*) FROM tblmovies";

                    conn.Open();

                    int numofmovies = Convert.ToInt32(scmd.ExecuteNonQuery());

                    hy1.Text = numofmovies.ToString();
                }
            }
        }


    }
}