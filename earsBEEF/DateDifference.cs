using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace earsBEEF
{
    public class DateDifference
    {

        public static string Datedifference(string startdate, string enddate)
        {
            string[] start = startdate.Split('/');
            string[] end = enddate.Split('/');
            
            DateTime d1 = new DateTime(Convert.ToInt32(start[2]), Convert.ToInt32(start[0]), Convert.ToInt32(start[1]));//startdate
            DateTime d2 = new DateTime(Convert.ToInt32(end[2]), Convert.ToInt32(end[0]), Convert.ToInt32(end[1]));//enddate

            TimeSpan diff = d2.Subtract(d1);
            string x = Convert.ToString(diff);

            return x;
        }
    }
}