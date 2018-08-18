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
            productOrderDtlDTO.OrderProductId = productOrderDetail.ProductOrderDetailId;
            productOrderDtlDTO.Quantity = productOrderDetail.Quantity.GetValueOrDefault();

            productOrderDtlDTO.UnitPrice = productOrderDetail.UnitPrice.GetValueOrDefault();
            productOrderDtlDTO.Total =(double) productOrderDetail.Total/100.00;

            productOrderDtlDTO.OrderStatus = productOrderDetail.OrderStatus;
            productOrderDtlDTO.OrderDeilveredDate = productOrderDetail.OrderDeilveredDate.GetValueOrDefault();
            productOrderDtlDTO.OrderDeilveredBy = productOrderDetail.OrderDeilveredBy;
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
                productOrderDetail.OrderProductId = productOrderDtlDTO.OrderProductId;
                productOrderDetail.Quantity = productOrderDtlDTO.Quantity;
                productOrderDetail.UnitPrice = (long)productOrderDtlDTO.UnitPrice*100;
                productOrderDetail.Total =(long) productOrderDtlDTO.Total*100;
                productOrderDetail.OrderDeilveredDate = DateTime.Now.AddDays(2);


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
