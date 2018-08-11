using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Platform.Sql;

namespace Platform.Repository
{
    public class CustomerPaymentRepository : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();
        public List<CustomerPaymentTransaction> GetAll()
        {

            List<CustomerPaymentTransaction> customerPaymentTransactionList = new List<CustomerPaymentTransaction>();
            customerPaymentTransactionList = _repository.CustomerPaymentTransactions.ToList<Sql.CustomerPaymentTransaction>();


            return customerPaymentTransactionList;
        }

        public CustomerPaymentTransaction GetById(int customerPaymentTransactionId)
        {
            CustomerPaymentTransaction customerPaymentTransaction = new CustomerPaymentTransaction();

            customerPaymentTransaction = _repository.CustomerPaymentTransactions.FirstOrDefault(x => x.TransactionId == customerPaymentTransactionId);



            return customerPaymentTransaction;
        }


        public void Add(CustomerPaymentTransaction customerPaymentTransaction)
        {

            if (customerPaymentTransaction != null)
            {
                _repository.CustomerPaymentTransactions.Add(customerPaymentTransaction);
                _repository.SaveChanges();

            }




        }

        public void Update(CustomerPaymentTransaction customerPaymentTransaction)
        {

            if (customerPaymentTransaction != null)
            {
                _repository.Entry<Sql.CustomerPaymentTransaction>(customerPaymentTransaction).State = System.Data.Entity.EntityState.Modified;
                _repository.SaveChanges();

            }


        }

        public void Delete(int customerPaymentTransactionId)
        {
            var customerPaymentTransaction = _repository.CustomerPaymentTransactions.Where(x => x.TransactionId == customerPaymentTransactionId).FirstOrDefault();
            if (customerPaymentTransaction != null)
                _repository.CustomerPaymentTransactions.Remove(customerPaymentTransaction);

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
