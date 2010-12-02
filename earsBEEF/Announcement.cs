using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class Announcement
    {
        private int announceID;
        private string title;
        private string content;
        private DateTime dateCreated;
        private int createStaffID;
        private int createStudID;
        private DateTime dateOfAnn;

        public Announcement( string title, string content, DateTime date, int createStaffID, int createStudID, DateTime dateOfAnn)
        {
            
            this.title = title;
            this.content = content;
            this.dateCreated = date;
            this.createStaffID = createStaffID;
            this.createStudID = createStudID;
            this.dateOfAnn = dateOfAnn;
        }

        public Announcement(int announceID, string title, string content, DateTime date, int createStaffID, int createStudID, DateTime dateOfAnn)
        {
            this.announceID = announceID;
            this.title = title;
            this.content = content;
            this.dateCreated = date;
            this.createStaffID = createStaffID;
            this.createStudID = createStudID;
            this.dateOfAnn = dateOfAnn;
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

        public DateTime DateCreated
        {
            get { return dateCreated; }
            set { dateCreated = value; }
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

        public DateTime DateOfAnn
        {
            get { return dateOfAnn; }
            set { dateOfAnn = value; }
        }

    }
}