using Microsoft.Owin.Hosting;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform
{
    class Program
    {
        static void Main(string[] args)
        {
            string baseAddress = ConfigurationManager.AppSettings["BaseUri"].ToString(); 

            //Start OWIN
           WebApp.Start<Startup>(baseAddress);
            Console.WriteLine("Service Started");
            Console.ReadLine();
        }
    }
}
