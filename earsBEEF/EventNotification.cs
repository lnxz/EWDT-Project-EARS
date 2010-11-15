using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class EventNotification
    {
        private int eventNotificationID;
        private int eventID;
        private DateTime date;
        private string type;
        private string template;

        public EventNotification(int eventNotificationID, int eventID, DateTime date, string type, string template)
        {
            this.eventNotificationID = eventNotificationID;
            this.eventID = eventID;
            this.date = date;
            this.type = type;
            this.template = template;
        }
        public EventNotification(int eventID, DateTime date, string type, string template)
        {
            this.eventID = eventID;
            this.date = date;
            this.type = type;
            this.template = template;
        }

        public string Template
        {
            get { return template; }
            set { template = value; }
        }

        public string Type
        {
            get { return type; }
            set { type = value; }
        }

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }

        public int EventID
        {
            get { return eventID; }
            set { eventID = value; }
        }

        public int EventNotificationID
        {
            get { return eventNotificationID; }
            set { eventNotificationID = value; }
        }
    }
}