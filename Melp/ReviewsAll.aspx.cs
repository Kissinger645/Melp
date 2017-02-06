using Melp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Melp
{
    public partial class ReviewsAll : System.Web.UI.Page
    {
        public List<Review> Reviews;
        public List<Movie> Movies;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ReviewContext())
            {
                Reviews = db.Reviews.ToList();
                Movies = db.Movies.ToList();
            }
        }
    }
}
