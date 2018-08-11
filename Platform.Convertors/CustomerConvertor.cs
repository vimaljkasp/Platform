using Platform.Models;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Convertors
{
    public class CustomerConvertor
    {
        public static CustomerDto ConvertToCustomerDto(Customer customer)
        {
            CustomerDto customerDto = new CustomerDto();
            customerDto.Name = customer.FirstName;
            return customerDto;


        }

        public static void ConvertToCustomerEntity(ref Customer customer, CustomerDto customerdto, bool isUpdate)
        {
            customer.FirstName = customerdto.Name;
            
        }
    }
}
