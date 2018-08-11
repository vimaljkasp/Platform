using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Platform.Sql;

namespace Platform.Repository
{
    public class ProductOrderRepository : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();
        public List<ProductOrder> GetAll()
        {

            List<ProductOrder> productOrderList = new List<ProductOrder>();
            productOrderList = _repository.ProductOrders.ToList<Sql.ProductOrder>();


            return productOrderList;
        }

        public ProductOrder GetById(int productOrderId)
        {
            ProductOrder productOrder = new ProductOrder();

            productOrder = _repository.ProductOrders.FirstOrDefault(x => x.OrderId == productOrderId);



            return productOrder;
        }


        public void Add(ProductOrder productOrder)
        {

            if (productOrder != null)
            {
                _repository.ProductOrders.Add(productOrder);
                _repository.SaveChanges();

            }




        }

        public void Update(ProductOrder productOrder)
        {

            if (productOrder != null)
            {
                _repository.Entry<Sql.ProductOrder>(productOrder).State = System.Data.Entity.EntityState.Modified;
                _repository.SaveChanges();

            }


        }

        public void Delete(int productOrderId)
        {
            var productOrder = _repository.ProductOrders.Where(x => x.OrderId == productOrderId).FirstOrDefault();
            if (productOrder != null)
                _repository.ProductOrders.Remove(productOrder);

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
