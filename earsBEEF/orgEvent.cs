using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class orgEvent
    {
        private int eventID;
        private string name;
        private DateTime registrationEnd;
        private int registeredNo;
        private int quota;

        public orgEvent(int eventID, string name, DateTime registrationEnd, int registeredNo, int quota)
        {
            this.eventID = eventID;
            this.name = name;
            this.registrationEnd = registrationEnd;
            this.registeredNo = registeredNo;
            this.quota = quota;
        }

        public int RegisteredNo
        {
            get { return registeredNo; }
            set { registeredNo = value; }
        }


        public int EventID
        {
            get { return eventID; }
            set { eventID = value; }
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        
        public DateTime RegistrationEnd
        {
            get { return registrationEnd; }
            set { registrationEnd = value; }
        }

        public int Quota
        {
            get { return quota; }
            set { quota = value; }
        }

    }
}