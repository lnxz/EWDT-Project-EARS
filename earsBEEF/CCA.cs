using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class CCA
    {
        private int ccaID;

        public int CcaID
        {
            get { return ccaID; }
            set { ccaID = value; }
        }
        private string name;

        public CCA(int ccaID, string name)
        {
            this.ccaID = ccaID;
            this.name = name;
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }


    }
}