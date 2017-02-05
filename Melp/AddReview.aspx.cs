using Melp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Melp
{
    public partial class AddReview : System.Web.UI.Page
    {
        public Movie movieInstance;
        public List<Review> Reviews;
        protected void Page_Load(object sender, EventArgs e)
        {
            var movieId = int.Parse(Request.QueryString["id"]);
            {
                using (var db = new ReviewContext())
                {
                    movieInstance = db.Movies.First(m => m.Id == movieId);
                    if (IsPostBack)
                    {
                        var review = new Review
                        {
                            Name = Request.Form["name"],
                            Title = movieInstance,
                            Rating = int.Parse(Request.Form["rating"]),
                            Age = int.Parse(Request.Form["age"]),
                            Gender = Request.Form["gender"],
                            Occupation = Request.Form["occupation"],
                        };
                        db.Reviews.Add(review);
                        db.SaveChanges();
                        Response.Redirect("Default.aspx");
                    }
                }
            }
        }

    }
}

