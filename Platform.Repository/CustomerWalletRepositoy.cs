using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Platform.Sql;

namespace Platform.Repository
{
    public class CustomerWalletRepositoy : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();
        public List<CustomerWallet> GetAll()
        {

            List<CustomerWallet> siteList = new List<CustomerWallet>();
            siteList = _repository.CustomerWallets.ToList<Sql.CustomerWallet>();


            return siteList;
        }

        public CustomerWallet GetById(int customerWallerId)
        {
            CustomerWallet customerWallet = new CustomerWallet();

            customerWallet = _repository.CustomerWallets.FirstOrDefault(x => x.WalletId == customerWallerId);



            return customerWallet;
        }


        public void Add(CustomerWallet customerPaymentTransaction)
        {

            if (customerPaymentTransaction != null)
            {
                _repository.CustomerWallets.Add(customerPaymentTransaction);
                _repository.SaveChanges();

            }




        }

        public void Update(CustomerWallet customerPaymentTransaction)
        {

            if (customerPaymentTransaction != null)
            {
                _repository.Entry<Sql.CustomerWallet>(customerPaymentTransaction).State = System.Data.Entity.EntityState.Modified;
                _repository.SaveChanges();

            }


        }

        public void Delete(int customerWallerId)
        {
            var customerWallet = _repository.CustomerWallets.Where(x => x.WalletId == customerWallerId).FirstOrDefault();
            if (customerWallet != null)
                _repository.CustomerWallets.Remove(customerWallet);

            _repository.SaveChanges();

        }

        protected void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (_repository != null)
                {
                    _repository.Dispose();
                    _repository = null;
                }
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }


    }
}
