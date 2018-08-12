using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Platform.Sql;

namespace Platform.Repository
{
    public class CustomerRepository : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();
        public List<Customer> GetAll()
        {
            var customers = _repository.Customers.ToList<Sql.Customer>();
            return customers;
        }

        public Customer GetById(int id)
        {
           
                var customer = _repository.Customers.FirstOrDefault(x => x.CustomerId == id);
             
           
            
            return customer;
        }


        public void Add(Customer customer)
        {
            if (customer != null)
            {
                _repository.Customers.Add(customer);
                _repository.SaveChanges();

            }
        }

        public void Update(Customer customer)
        {
         
                if (customer != null)
                {
                    _repository.Entry<Sql.Customer>(customer).State = System.Data.Entity.EntityState.Modified;
                    _repository.SaveChanges();
                }     

       
            
        }

        public void Delete(int id)
        {
            var customer = _repository.Customers.Where(x => x.CustomerId == id).FirstOrDefault();
            if (customer != null)
                _repository.Customers.Remove(customer);

            _repository.SaveChanges();

        }

        public Customer GetCustomerByMobileNumber(string mobileNumber)
        {
            var custmer = _repository.Customers.Where(x => x.MobileNumber == mobileNumber).FirstOrDefault();
            return custmer;
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
