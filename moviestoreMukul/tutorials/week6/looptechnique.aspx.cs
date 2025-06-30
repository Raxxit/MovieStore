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
    public partial class looptechnique : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create Connection
            using (SqlConnection con = new SqlConnection(_conString))
            {
                // Create Command
                using (SqlCommand scmd = new SqlCommand())
                {
                    scmd.Connection = con;
                    scmd.CommandType = CommandType.Text;
                    // Add the appropriate sql statement
                    scmd.CommandText = " select * from tblcategory tc, tblmovies tm where tc.category_id = tm.category_id; ";
                    con.Open();
                    using (SqlDataReader dr = scmd.ExecuteReader())
                    {
                        while (dr.Read() )
                        {

                            ListItem newItem = new ListItem();
                            newItem.Text = (String)dr["category_name"] + ":" + dr["moviename"]+", $"+ dr["boxofficetotals"];
                            BulletedList1.Items.Add(newItem);

                        }
                    }
                }
            }
        }
    }
}