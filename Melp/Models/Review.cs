using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Melp.Models
{
    public class Review
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public virtual Movie Title { get; set; }
        public int Rating { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
        public string Occupation { get; set; }
    }
}