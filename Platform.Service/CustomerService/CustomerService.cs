using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class CustomerService : ICustomerService
    {
        private readonly CustomerRepository customerRepository;
        
        public CustomerService(CustomerRepository customerRepository)
        {
            this.customerRepository = customerRepository;
        }

        public List<CustomerDto> GetAllCustomers()
        {
            List<CustomerDto> customerList = new List<CustomerDto>();
            var customers = customerRepository.GetAll();
            if (customers != null)
            {
                foreach (var customer in customers)
                {
                    customerList.Add(CustomerConvertor.ConvertToCustomerDto(customer));
                }

            }

            return customerList;

        }


        public CustomerDto GetCustomerById(int customerId)
        {
            CustomerDto customerDto = null;
            var customer = customerRepository.GetById(customerId);
            if (customer != null)
            {
                customerDto = CustomerConvertor.ConvertToCustomerDto(customer);
            }
            return customerDto;
        }

        public void AddCustomer(CustomerDto customerDto)
        {
            Customer customer = new Customer(); 
            CustomerConvertor.ConvertToCustomerEntity(ref customer, customerDto, false);
            customerRepository.Add(customer);
            
        }

        public void UpdateCustomer(CustomerDto customerDto)
        {
            Customer customer = new Customer();
            CustomerConvertor.ConvertToCustomerEntity(ref customer, customerDto, true);
            customerRepository.Update(customer);
        }

        public void DeleteCustomer(int id)
        {
            customerRepository.Delete(id);
        }

    }
}
