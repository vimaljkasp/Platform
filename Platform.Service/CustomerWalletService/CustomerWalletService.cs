using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class CustomerWalletService : ICustomerWalletService
    {

        private readonly CustomerWalletRepositoy customerWalletRepositoy;

        public CustomerWalletService(CustomerWalletRepositoy customerWalletRepositoy)
        {
            this.customerWalletRepositoy = customerWalletRepositoy;
        }
        public void AddCustomerWallet(CustomerWalletDTO customerWalletDTO)
        {
            CustomerWallet customerWallet = new CustomerWallet();
            CustomerWalletConvertor.ConvertToCustomerWalletEntity(ref customerWallet, customerWalletDTO, false);
            customerWalletRepositoy.Add(customerWallet);
        }

        public void DeleteCustomerWallet(int id)
        {
            throw new NotImplementedException();
        }

        public List<CustomerWalletDTO> GetAllCustomersWaller()
        {
            throw new NotImplementedException();
        }

        public CustomerWalletDTO GetCustomerWalletById(int customerId)
        {
            throw new NotImplementedException();
        }

        public void UpdateCustomerWallet(CustomerWalletDTO customerDto)
        {
            throw new NotImplementedException();
        }
    }
}
