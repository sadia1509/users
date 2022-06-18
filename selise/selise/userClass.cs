using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace selise
{

    public class userClass
    {
       
            public string firstName { get; set; }
            public string lastName { get; set; }
            public string email { get; set; }
            public string phone { get; set; }
            public string birthdate { get; set; } 
            public string gender { get; set; }
            public string city { get; set; }

        public string pass { get; set; }
        public string conpass { get; set; }

    }

    public class userClassList
    {
       public static List<userClass> users = new List<userClass>();
    }
}