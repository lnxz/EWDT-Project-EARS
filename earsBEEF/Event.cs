using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing; // for image

namespace EARS
{
    public class Event
    {
        private int eventID;
        private string name;
        private string venue;
        private double registrationCost;
        private string category;
        private string descrip;
        private string eventDate;
        private DateTime registrationStart;
        private DateTime registrationEnd;
        private int quota;
        private int ccaID;
        private int orgStudID;
        private int orgStaffID;
        private DateTime dateCreated;
        private string status;

   
        //private Image picture;

        public Event(string name, string venue, double registrationCost, string category, string descrip, string eventdate, DateTime registrationStart, DateTime registrationEnd, int quota, int ccaID, int orgstudID, int orgstaffID, DateTime dateCreated, string status)
        {
           
            this.name = name;
            this.venue = venue;
            this.registrationCost = registrationCost;
            this.category = category;
            this.descrip = descrip;
            this.eventDate = eventdate;
            this.registrationStart = registrationStart;
            this.registrationEnd = registrationEnd;
            this.quota = quota;
            this.ccaID = ccaID;
            this.orgStaffID = orgstaffID;
            this.orgStudID = orgstudID;
            this.dateCreated = dateCreated;
            this.status = status;
        }

        public Event(int eventID, string name, string venue, double registrationCost, string category, string descrip, string eventdate, DateTime registrationStart, DateTime registrationEnd, int quota, int ccaID, int orgstudID, int orgstaffID, DateTime dateCreated,string status)
        {
            this.eventID = eventID;
            this.name = name;
            this.venue = venue;
            this.registrationCost = registrationCost;
            this.category = category;
            this.descrip = descrip;
            this.eventDate = eventdate;
            this.registrationStart = registrationStart;
            this.registrationEnd = registrationEnd;
            this.quota = quota;
            this.ccaID = ccaID;
            this.orgStaffID = orgstaffID;
            this.orgStudID = orgstudID;
            this.dateCreated = dateCreated;
            this.status = status;
        }


        public string Status
        {
            get { return status; }
            set { status = value; }
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

        public double RegistrationCost
        {
            get { return registrationCost; }
            set { registrationCost = value; }
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

        public DateTime RegistrationStart
        {
            get { return registrationStart; }
            set { registrationStart = value; }
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

        //public Image Picture
        //{
        //    get { return Picture; }
        //    set { Picture = value; }
        //}
    }
}