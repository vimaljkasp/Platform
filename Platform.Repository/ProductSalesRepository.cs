using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Platform.Sql;

namespace Platform.Repository
{
    public class ProductSalesRepository : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();
        public List<ProductSale> GetAll()
        {

            List<ProductSale> salesList = new List<ProductSale>();
            salesList = _repository.ProductSales.ToList<Sql.ProductSale>();


            return salesList;
        }

        public ProductSale GetById(int salesId)
        {
            ProductSale sale = new ProductSale();

            sale = _repository.ProductSales.FirstOrDefault(x => x.SalesId == salesId);



            return sale;
        }


        public void Add(ProductSale sale)
        {

            if (sale != null)
            {
                _repository.ProductSales.Add(sale);
                _repository.SaveChanges();

            }




        }

        public void Update(ProductSale sale)
        {

            if (sale != null)
            {
                _repository.Entry<Sql.ProductSale>(sale).State = System.Data.Entity.EntityState.Modified;
                _repository.SaveChanges();

            }


        }

        public void Delete(int salesId)
        {
            var sale = _repository.ProductSales.Where(x => x.SalesId == salesId).FirstOrDefault();
            if (sale != null)
                _repository.ProductSales.Remove(sale);

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
