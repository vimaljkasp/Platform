using Platform.DTO;
using Platform.Repository;
using Platform.Sql;
using Platform.Utilities.ExceptionHandler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductOrderService : IProductOrderService
    {
        private UnitOfWork unitOfWork;
        private ProductOrderRepository productOrderRepository;
        public ProductOrderService()
        {
            unitOfWork = new UnitOfWork();
            productOrderRepository = new ProductOrderRepository();
        }

        public void AddProductOrder(ProductOrderDTO productOrderDTO)
        {
            ProductOrder productOrder = new ProductOrder();
            int OrderId= unitOfWork.DashboardRepository.NextNumberGenerator("ProductOrder");
            productOrder.OrderNumber = "OD" + OrderId.ToString();

            List<ProductOrderDetail> productOrderDetails = new List<ProductOrderDetail>();
            ProductOrderConvertor.ConvertToProductOrderEntity(ref productOrder, productOrderDTO, false);
            ProductOrderDetail productOrderDetail = new ProductOrderDetail();
            productOrderDetail.OrderId = productOrder.OrderId;
            productOrderDetail.ProductMappingId = productOrderDTO.ProductMappingId;
            productOrderDetail.Quantity = productOrderDTO.Qunatity;
            productOrderDetail.OrderAddress = productOrderDTO.OrderAddress;
            productOrderDetail.DeliveryExpectedDate = productOrderDTO.ExpectedDeliveryDate;
            productOrderDetails.Add(productOrderDetail);
            productOrder.ProductOrderDetails = productOrderDetails;
            unitOfWork.ProductOrderRepository.Add(productOrder);
            unitOfWork.SaveChanges();           
        }

        public void DeleteProductOrder(int productId)
        {
            throw new NotImplementedException();
        }

        public List<ProductOrders> GetAllProductOrders()
        {
         
           return unitOfWork.DashboardRepository.GetProductOrders();
        }

        public ProductOrderDTO GetProductOrderById(int productId)
        {
            var productOrder = unitOfWork.ProductOrderRepository.GetById(productId);

            return ProductOrderConvertor.ConvertToProductOrderDto(productOrder);

        }

        public void UpdateProductOrder(ProductOrderDTO productOrderDTO)
        {
            throw new NotImplementedException();
        }
    }
}
