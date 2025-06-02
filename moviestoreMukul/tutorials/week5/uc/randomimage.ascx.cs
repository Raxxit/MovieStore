using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestoreMukul.tutorials.week5
{
    public partial class randomimage : System.Web.UI.UserControl
    {
        private string _imageFolderPath = "~/images";
        public string ImageFolderPath
        {
            get { return _imageFolderPath; }
            set { _imageFolderPath = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string imageToDisplay = GetRandomImage();
            imgRandom.ImageUrl = Path.Combine(_imageFolderPath, imageToDisplay);
            lblRandom.Text = imageToDisplay;
        }
        private string GetRandomImage()
        {
            Random rnd = new Random();
            string[] images = Directory.GetFiles(MapPath(_imageFolderPath), "*.jpg");
            string imageToDisplay = images[rnd.Next(images.Length)];
            return Path.GetFileName(imageToDisplay);
        }
    }
}