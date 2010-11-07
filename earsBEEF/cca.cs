using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class cca
    {
        private int ccaID; 
        private string name;

        public cca(int ccaID, string name)
        {
            this.ccaID = ccaID;
            this.name = name;
        }

        public int CcaID
        {
            get { return ccaID; }
            set { ccaID = value; }
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

    }
}