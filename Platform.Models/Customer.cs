using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Models
{
   public class CustomerDto
    {
        
        public long CustomerId { get; set; }

        public string Name { get; set; }

        public string AddressLine1 { get; set; }

        public string AddressLine2 { get; set; }

        public string City { get; set; }

        public string District { get; set; }

        public string State { get; set; }

        public string PinCode { get; set; }

        public string MobileNumber { get; set; }

        public string HomePhone { get; set; }
        
    }
}
