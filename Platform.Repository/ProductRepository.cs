﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Platform.Sql;

namespace Platform.Repository
{
    public class ProductRepository : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();
        public List<Product> GetAll()
        {

            List<Product> productList = new List<Product>();
            productList = _repository.Products.ToList<Sql.Product>();


            return productList;
        }

        public Product GetById(int productId)
        {
            Product product = new Product();

            product = _repository.Products.FirstOrDefault(x => x.ProductId == productId);



            return product;
        }


        public void Add(Product product)
        {




            if (product != null)
            {
                _repository.Products.Add(product);
            //    _repository.SaveChanges();

            }




        }

        public void Update(Product product)
        {

            if (product != null)
            {
                _repository.Entry<Sql.Product>(product).State = System.Data.Entity.EntityState.Modified;
                _repository.SaveChanges();

            }


        }

        public void Delete(int productId)
        {
            var site = _repository.Products.Where(x => x.ProductId == productId).FirstOrDefault();
            if (site != null)
                _repository.Products.Remove(site);

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
