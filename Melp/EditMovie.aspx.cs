using Melp.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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
                    
                    {
                        movieInstance.Title = Request.Form["title"];
                        movieInstance.Genre = Request.Form["genre"];
                        movieInstance.IMDBlink = Request.Form["imdburl"];
                        movieInstance.Release = Convert.ToDateTime(Request.Form["release"]);
                    };
                    db.Entry(movieInstance).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}
/*namespace NoteTaker
{
    public partial class Edit : System.Web.UI.Page
    {
        public Note noteInstance;

        protected void Page_Load(object sender, EventArgs e)
        {
            var noteId = int.Parse(Request.QueryString["id"]);
            using (var db = new NoteContext())
            {
                noteInstance = db.Notes.First(n => n.Id == noteId);
                if (IsPostBack)
                {
                    noteInstance.Title = Request.Form["title"];
                    noteInstance.Body = Request.Form["body"];
                    noteInstance.TimeStamp = Request.Form["timestamp"];

                    db.Entry(noteInstance).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");
                }
*/
