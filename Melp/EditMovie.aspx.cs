using Melp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Melp
{
    public partial class AddMovie : System.Web.UI.Page
    {
        public Movie movieInstance;

        protected void Page_Load(object sender, EventArgs e)
        {
            var movieId = int.Parse(Request.QueryString["id"]);
            using (var db = new ReviewContext())
            {
                movieInstance = db.Movies.First(m => m.Id == movieId);
                if (IsPostBack)
                {
                    var movie = new Movie
                    {
                        Title = Request.Form["title"],
                        Genre = Request.Form["genre"],
                        IMDBlink = Request.Form["imdburl"],
                        Release = Convert.ToDateTime(Request.Form["release"]),
                    };
                    db.Movies.Add(movie);
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}