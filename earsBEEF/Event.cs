using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class Event
    {
        private int eventID;
        private string name;
        private string venue;
        private double regCost;
        private string category;
        private string descrip;
        private string eventDate;
        private DateTime regStart;
        private DateTime regEnd;
        private int quota;
        private int ccaID;
        private int orgStudID;
        private int orgStaffID;
        private DateTime dateCreated;

        public Event(int eventID, string name, string venue, double regcost, string category, string descrip, string eventdate, DateTime regstart, DateTime regend, int quota, int ccaID, int orgstudID, int orgstaffID, DateTime dateCreated)
        {
            this.eventID = eventID;
            this.name = name;
            this.venue = venue;
            this.regCost = regcost;
            this.category = category;
            this.descrip = descrip;
            this.eventDate = eventdate;
            this.regStart = regstart;
            this.regEnd = regend;
            this.quota = quota;
            this.ccaID = ccaID;
            this.orgStaffID = orgstaffID;
            this.orgStudID = orgstudID;
            this.dateCreated = dateCreated;
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

        public string Venue
        {
            get { return venue; }
            set { venue = value; }
        }

        public double RegCost
        {
            get { return regCost; }
            set { regCost = value; }
        }

        public string Category
        {
            get { return category; }
            set { category = value; }
        }

        public string Descrip
        {
            get { return descrip; }
            set { descrip = value; }
        }

        public string EventDate
        {
            get { return eventDate; }
            set { eventDate = value; }
        }

        public DateTime RegStart
        {
            get { return regStart; }
            set { regStart = value; }
        }

        public DateTime RegEnd
        {
            get { return regEnd; }
            set { regEnd = value; }
        }

        public int Quota
        {
            get { return quota; }
            set { quota = value; }
        }

        public int CcaID
        {
            get { return ccaID; }
            set { ccaID = value; }
        }

        public int OrgStudID
        {
            get { return orgStudID; }
            set { orgStudID = value; }
        }

        public int OrgStaffID
        {
            get { return orgStaffID; }
            set { orgStaffID = value; }
        }

        public DateTime DateCreated
        {
            get { return dateCreated; }
            set { dateCreated = value; }
        }

    }
}