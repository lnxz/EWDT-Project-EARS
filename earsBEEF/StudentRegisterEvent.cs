using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class StudentRegisterEvent
    {
        private int studentID;
        private int eventID;

        public StudentRegisterEvent(int studentID, int eventID)
        {
            this.studentID = studentID;
            this.eventID = eventID;
        }
        public StudentRegisterEvent(int eventID)
        {
            this.eventID = eventID;
        }

        public int EventID
        {
            get { return eventID; }
            set { eventID = value; }
        }

        public int EventNotificationID
        {
            get { return studentID; }
            set { studentID = value; }
        }
    }
}