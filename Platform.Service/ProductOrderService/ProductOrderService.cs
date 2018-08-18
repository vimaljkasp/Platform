using Platform.DTO;
using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductOrderService : IProductOrderService
    {
        public void AddProductOrder(ProductOrderDTO productOrderDTO)
        {
            ProductOrder productOrder = new ProductOrder();
            ProductOrderDetail productOrderDetail;
            ProductOrderConvertor.ConvertToProductOrderEntity(ref productOrder,productOrderDTO,false);
            UnitOfWork unitOfWork = new UnitOfWork();
            unitOfWork.ProductOrderRepository.Add(productOrder);
            if(productOrderDTO.ProductOrderDetails !=null && productOrderDTO.ProductOrderDetails.Count()>0)
            {
                foreach(ProductOrderDtlDTO productOrderDtlDTO in productOrderDTO.ProductOrderDetails)
                {
                    productOrderDetail = new ProductOrderDetail();
                    ProductOrderDtlDTOConvertor.ConvertToProductOrderDetailEntity(ref productOrderDetail, productOrderDtlDTO, false);
                    unitOfWork.ProductOrderDtlRepository.Add(productOrderDetail);
                }
            }
            unitOfWork.SaveChanges();

        }

        public void DeleteProductOrder(int productId)
        {
            throw new NotImplementedException();
        }

        public List<ProductOrderDTO> GetAllProductOrders()
        {
            throw new NotImplementedException();
        }

        public ProductOrderDTO GetProductOrderById(int productId)
        {
            throw new NotImplementedException();
        }

        public void UpdateProductOrder(ProductOrderDTO productOrderDTO)
        {
            throw new NotImplementedException();
        }
    }
}
