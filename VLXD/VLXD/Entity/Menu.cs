using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VLXD.Entity
{
    public class Menu
    {
        public string english { get; set; }
        public string vietnamese { get; set; }
        public string link { get; set; }

        public Menu(string english, string vietnamese, string link) {
            this.english = english;
            this.vietnamese = vietnamese;
            this.link = link;
        }
    }
}