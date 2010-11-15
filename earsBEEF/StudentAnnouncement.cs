using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class StudentAnnouncement
    {
        private int studentID;
        private int announcementID;

        public StudentAnnouncement(int studentID, int announcementID)
        {
            this.studentID = studentID;
            this.announcementID = announcementID;
        }
        public StudentAnnouncement(int announcementID)
        {
            this.announcementID = announcementID;
        }

        public int EventID
        {
            get { return announcementID; }
            set { announcementID = value; }
        }

        public int EventNotificationID
        {
            get { return studentID; }
            set { studentID = value; }
        }
    }
}