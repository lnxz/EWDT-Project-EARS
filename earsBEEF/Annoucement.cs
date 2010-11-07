using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class Annoucement
    {
        private int announceID;
        private string title;
        private string content;
        private DateTime date;
        private int createStaffID;
        private int createStudID;

        public Annoucement(int announceID, string title, string content, DateTime date, int createStaffID, int createStudID)
        {
            this.announceID = announceID;
            this.title = title;
            this.content = content;
            this.date = date;
            this.createStaffID = createStaffID;
            this.createStudID = createStudID;
        }

        public int AnnounceID
        {
            get { return announceID; }
            set { announceID = value; }
        }

        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        public string Content
        {
            get { return content; }
            set { content = value; }
        }

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }

        public int CreateStaffID
        {
            get { return createStaffID; }
            set { createStaffID = value; }
        }

        public int CreateStudID
        {
            get { return createStudID; }
            set { createStudID = value; }
        }
    }
}