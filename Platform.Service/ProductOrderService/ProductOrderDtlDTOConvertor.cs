using Platform.DTO;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductOrderDtlDTOConvertor
    {
        public static ProductOrderDtlDTO ConvertToProductOrderDtlDto(ProductOrderDetail productOrderDetail)
        {
            ProductOrderDtlDTO productOrderDtlDTO = new ProductOrderDtlDTO();
            productOrderDtlDTO.ProductOrderDetailId = productOrderDetail.ProductOrderDetailId;
            productOrderDtlDTO.OrderId = productOrderDetail.OrderId.GetValueOrDefault();
            productOrderDtlDTO.OrderProductMappingId = productOrderDetail.ProductMappingId.GetValueOrDefault();
            productOrderDtlDTO.Quantity = productOrderDetail.Quantity.GetValueOrDefault();

            productOrderDtlDTO.UnitPrice = productOrderDetail.UnitPrice.GetValueOrDefault();
            productOrderDtlDTO.TotalPrice = productOrderDetail.TotalPrice.GetValueOrDefault();

            productOrderDtlDTO.OrderStatus = productOrderDetail.OrderStatus;
            productOrderDtlDTO.DeilveredDate = productOrderDetail.DeilveredDate.GetValueOrDefault();
            productOrderDtlDTO.DeilveredBy = productOrderDetail.DeilveredBy;
            productOrderDtlDTO.VehicleNumber = productOrderDetail.VehicleNumber;
            productOrderDtlDTO.DriverName = productOrderDetail.DriverName;
            productOrderDtlDTO.DriverNumber = productOrderDetail.DriverNumber;
            productOrderDtlDTO.JCBDriverNumber = productOrderDetail.JCBDriverNumber;
            productOrderDtlDTO.RoyaltyNumber = productOrderDetail.RoyaltyNumber;


            productOrderDtlDTO.Ref1 = productOrderDtlDTO.Ref1;
            productOrderDtlDTO.Ref2 = productOrderDtlDTO.Ref2;


            return productOrderDtlDTO;


        }

        public static void ConvertToProductOrderDetailEntity(ref ProductOrderDetail productOrderDetail, ProductOrderDtlDTO productOrderDtlDTO, bool isUpdate)
        {
            if (isUpdate)
            {
                productOrderDetail.ProductOrderDetailId = productOrderDtlDTO.ProductOrderDetailId;

            }
            else
            {
                productOrderDetail.OrderId = productOrderDtlDTO.OrderId;
                productOrderDetail.ProductMappingId = productOrderDtlDTO.OrderProductMappingId;
                productOrderDetail.Quantity = productOrderDtlDTO.Quantity;
                productOrderDetail.UnitPrice = productOrderDtlDTO.UnitPrice;
                productOrderDetail.TotalPrice = productOrderDtlDTO.TotalPrice;
                productOrderDetail.DeilveredDate = DateTime.Now.AddDays(2);


            }
            productOrderDetail.OrderStatus = productOrderDtlDTO.OrderStatus;
            productOrderDetail.VehicleNumber = productOrderDtlDTO.VehicleNumber;
            productOrderDetail.DriverName = productOrderDtlDTO.DriverName;
            productOrderDetail.DriverNumber = productOrderDtlDTO.DriverNumber;
            productOrderDetail.JCBDriverNumber = productOrderDtlDTO.JCBDriverNumber;
            productOrderDetail.RoyaltyNumber = productOrderDtlDTO.RoyaltyNumber;

      
            productOrderDetail.Ref1 = productOrderDtlDTO.Ref1;
            productOrderDetail.Ref2 = productOrderDtlDTO.Ref2;


    }
    }
}
