using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class Category
    {
        private int categoryID;
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public int CategoryID
        {
            get { return categoryID; }
            set { categoryID = value; }
        }

    }
}