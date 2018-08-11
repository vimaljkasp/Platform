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
            productOrderDtlDTO.OrderId = productOrderDetail.OrderId;
            productOrderDtlDTO.ProductId = productOrderDetail.ProductId;
            productOrderDtlDTO.Quantity = productOrderDetail.Quantity;
            productOrderDtlDTO.UnitPrice = productOrderDetail.UnitPrice;
            productOrderDtlDTO.Total = productOrderDetail.Total;
            productOrderDtlDTO.Ref1 = productOrderDetail.Ref1;
            productOrderDtlDTO.Ref1 = productOrderDetail.Ref1;
         
            return productOrderDtlDTO;


        }

        public static void ConvertToProductOrderDetailEntity(ref ProductOrderDetail productOrderDetail, ProductOrderDtlDTO productOrderDtlDTO, bool isUpdate)
        {
            if(isUpdate)
                productOrderDetail.ProductOrderDetailId = productOrderDtlDTO.ProductOrderDetailId;
            productOrderDetail.OrderId = productOrderDtlDTO.OrderId;
            productOrderDetail.ProductId = productOrderDtlDTO.ProductId;
            productOrderDetail.Quantity = productOrderDtlDTO.Quantity;
            productOrderDetail.UnitPrice = productOrderDtlDTO.UnitPrice;
            productOrderDetail.Total = productOrderDtlDTO.Total;
            productOrderDetail.Ref1 = productOrderDtlDTO.Ref1;
            productOrderDetail.Ref1 = productOrderDtlDTO.Ref1;


        }
    }
}
