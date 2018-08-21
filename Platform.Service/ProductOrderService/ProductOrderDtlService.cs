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
    public class ProductOrderDtlService : IProductOrderDtlService
    {
        private UnitOfWork unitOfWork;
        private ProductOrderDtlRepository productOrderDtlRepository;

        public ProductOrderDtlService()
        {
            unitOfWork = new UnitOfWork();
            productOrderDtlRepository = new ProductOrderDtlRepository();
        }

        public void AddProductOrderDtl(ProductOrderDtlDTO customerDto)
        {
            throw new NotImplementedException();
        }

        public void DeleteProductOrderDtl(int productOrderDtlId)
        {
            throw new NotImplementedException();
        }

        public List<ProductOrderDtlDTO> GetAllProductOrderDtl()
        {
            throw new NotImplementedException();
        }

        public ProductOrderDtlDTO GetProductOrderDtlById(int productOrderDtlId)
        {
            throw new NotImplementedException();
        }

       

        public void UpdateProductOrderDtl(ProductOrderDtlDTO productOrderDtlDTO)
        {
            ProductOrderDetail productOrderDetail = productOrderDtlRepository.GetById(productOrderDtlDTO.ProductOrderDetailId);
            if (productOrderDetail != null)
            {
                if (string.IsNullOrWhiteSpace(productOrderDtlDTO.OrderStatus) == false)
                    productOrderDetail.OrderStatus = (int)((OrderStatus)Enum.Parse(typeof(OrderStatus), productOrderDtlDTO.OrderStatus));

                if (string.IsNullOrWhiteSpace(productOrderDtlDTO.VehicleNumber) == false)
                    productOrderDetail.VehicleNumber = productOrderDtlDTO.VehicleNumber;

                if (string.IsNullOrWhiteSpace(productOrderDtlDTO.DriverName) == false)
                    productOrderDetail.DriverName = productOrderDtlDTO.DriverName;

                if (string.IsNullOrWhiteSpace(productOrderDtlDTO.DriverNumber) == false)
                    productOrderDetail.DriverNumber = productOrderDtlDTO.DriverNumber;

                if (string.IsNullOrWhiteSpace(productOrderDtlDTO.JCBDriverNumber) == false)
                    productOrderDetail.JCBDriverNumber = productOrderDtlDTO.JCBDriverNumber;

                if (string.IsNullOrWhiteSpace(productOrderDtlDTO.RoyaltyNumber) == false)
                    productOrderDetail.RoyaltyNumber = productOrderDtlDTO.RoyaltyNumber;

                if (string.IsNullOrWhiteSpace(productOrderDtlDTO.DeilveredBy) == false)
                    productOrderDetail.DeilveredBy = productOrderDtlDTO.DeilveredBy;

                if (productOrderDetail.DeilveredDate != DateTime.MinValue)
                    productOrderDetail.DeilveredDate = productOrderDtlDTO.DeilveredDate;

                unitOfWork.ProductOrderDtlRepository.Update(productOrderDetail);
                unitOfWork.SaveChanges();
            }
        }
    }
}
