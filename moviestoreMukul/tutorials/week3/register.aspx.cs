using Antlr.Runtime.Tree;
using moviestoreMukul.tutorials.week5;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Configuration;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


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
                string filen = "avatar.jpg";
                //Check whether the fileupload contains a file
                if ( fuppic.HasFile )
                {
                    if (CheckFileType(fuppic.FileName))
                    {
                        filen = Path.GetFileName(fuppic.PostedFile.FileName);
                        fuppic.PostedFile.SaveAs(Server.MapPath("~/Images/") +
                        filen);
                    }
                }
                // Create Connection
                SqlConnection con = new SqlConnection(_conString);
                // Create Command
                SqlCommand scmd = new SqlCommand();
                scmd.CommandType = CommandType.Text;
                scmd.Connection = con;
                //create a parameterized query for the username

                scmd.Parameters.AddWithValue("@uname", txtuname.Text.Trim());

                //search for username from tbluser
                scmd.CommandText = "select * from tbluser where username = @uname";
                //Create DataReader
                SqlDataReader dr;
                con.Open();
                dr = scmd.ExecuteReader();
                //Check if username already exists in the DB
                if (dr.HasRows )
                {
                    lblmsg.Text = "Username Already Exist, Please Choose Another";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                    txtuname.Focus();
                }
                else
                {
                    //Ensure the DataReader is closed
                    dr.Close();

                    string gender = "";
                    if (radmale.Checked == true)
                    {
                        gender = "M";
                    }
                    else
                    {
                        gender = "F";
                    }
                    string strDate = txtdob.Text;
                    //DateTime dt = Convert.ToDateTime(strDate);
                    // Create another Command object for the insert statement
                    SqlCommand icmd = new SqlCommand();
                    icmd.Connection = con;
                    icmd.CommandText = "INSERT INTO tbluser(firstname, lastname, gender, country_id, street, mobilenum, DOB, imageurl, email, username, pwd,status) VALUES(@firstname, @lastname, @gender, @country, @street, @mob,@dob, @imgname, @email, @username, @pwd, @status)";
                icmd.Parameters.AddWithValue("@firstname", txtfname.Text);
                    icmd.Parameters.AddWithValue("@lastname", txtlname.Text);
                    icmd.Parameters.AddWithValue("@gender", gender );
                    //retrieve the country dropdown list value
                    icmd.Parameters.AddWithValue("@country", ddlcountry.SelectedValue );
                    icmd.Parameters.AddWithValue("@street", txtstreet.Text);
                    icmd.Parameters.AddWithValue("@mob", txtmob.Text);
                    icmd.Parameters.AddWithValue("@dob", strDate);
                    icmd.Parameters.AddWithValue("@imgname", filen);
                    icmd.Parameters.AddWithValue("@email", txtemail.Text);
                    icmd.Parameters.AddWithValue("@username", txtuname.Text);
                    //add a method to encrypt your password
                    icmd.Parameters.AddWithValue("@pwd",Encrypt(txtpass.Text));
                    //set the status to active or inactive
                    icmd.Parameters.AddWithValue("@status", 1 );
                    icmd.CommandType = CommandType.Text;
                    icmd.ExecuteNonQuery();
                    //call the sendemail method
                    sendemail();
                    con.Close();
                    Response.Redirect("~/tutorials/week5/login");
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            txtfname.Text = "";
            txtlname.Text = "";
            txtdob.Text = "";
            ddlcountry.SelectedIndex = 0;
            txtstreet.Text = "";
            txtmob.Text = "";
            txtemail.Text = "";
            txtuname.Text = "";
            txtpass.Text = "";
            txtcpass.Text = "";
            chkagreement.Checked = false;


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

        //check file format before uploading
        bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }



        public string Encrypt(string clearText)
        {
            // defining encrytion key
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new
                byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65,0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    // encoding using key
                    using (CryptoStream cs = new CryptoStream(ms,
                    encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }


        //Sending an email to notify and welcome user
        //Sending an email to notify and welcome user
        private void sendemail()
        {
            string filen = "avatar.jpg";
            //Check whether the fileupload contains a file
            if ( fuppic.HasFile )
            {
                if (CheckFileType(fuppic.FileName))
                {
                    filen = Path.GetFileName(fuppic.PostedFile.FileName);
                }
            }
            SmtpSection smtpSection =
            (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
            using (MailMessage m = new MailMessage(smtpSection.From, txtemail.Text.Trim()))
            {
                SmtpClient sc = new SmtpClient();
                try
                {
                    m.Subject = "This is a Test Mail";
                    m.IsBodyHtml = true;
                    StringBuilder msgBody = new StringBuilder();
                    msgBody.Append("Dear " + txtuname.Text + ", your registration is successful, thank you for signing up...");
                    //msgBody.Append(txtbody.Text.Trim());
                    m.Attachments.Add(new Attachment(Server.MapPath("~/Images/") + filen));
                    msgBody.Append("<a href='https://" +
                    HttpContext.Current.Request.Url.Authority + "/tutorials/week5/login'>Click here to login to...</ a > ");
                    m.Body = msgBody.ToString();
                    sc.Host = smtpSection.Network.Host;
                    sc.EnableSsl = smtpSection.Network.EnableSsl;
                    NetworkCredential networkCred = new
                    NetworkCredential(smtpSection.Network.UserName, smtpSection.Network.Password);
                    sc.UseDefaultCredentials = smtpSection.Network.DefaultCredentials;
                    sc.Credentials = networkCred;
                    sc.Port = smtpSection.Network.Port;
                    sc.Send(m);
                    Response.Write("Email Sent successfully");
}
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }


    }
}