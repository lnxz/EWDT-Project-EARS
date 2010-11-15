using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class CCA
    {
        private int ccaID;
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

        public int CcaID
        {
            get { return CcaID; }
            set { CcaID = value; }
        }
    }
}