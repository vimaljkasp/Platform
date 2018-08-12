﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Platform.Sql;

namespace Platform.Repository
{
    public class CustomerSessionRepository : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();
        public List<CustomerSession> GetAll()
        {
            var customerSessions = _repository.CustomerSessions.ToList<Sql.CustomerSession>();
            return customerSessions;
        }

        public CustomerSession GetById(int id)
        {

            var customerSession = _repository.CustomerSessions.FirstOrDefault(x => x.SessionId == id);



            return customerSession;
        }


        public void Add(CustomerSession customer)
        {
            if (customer != null)
            {
                _repository.CustomerSessions.Add(customer);
                _repository.SaveChanges();

            }
        }

        public void Update(CustomerSession customerSession)
        {
        
                if (customerSession != null)
                {
                    _repository.Entry<Sql.CustomerSession>(customerSession).State = System.Data.Entity.EntityState.Modified;
                    _repository.SaveChanges();
                }

            
       

        }

        public void Delete(int id)
        {
            var customerSession = _repository.CustomerSessions.Where(x => x.SessionId == id).FirstOrDefault();
            if (customerSession != null)
                _repository.CustomerSessions.Remove(customerSession);

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