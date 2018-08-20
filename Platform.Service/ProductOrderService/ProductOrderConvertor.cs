using Platform.DTO;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductOrderConvertor
    {
        public static ProductOrderDTO ConvertToProductOrderDto(ProductOrder productOrder)
        {
            ProductOrderDTO productOrderDTO = new ProductOrderDTO();
            productOrderDTO.OrderPurchaseDtm = productOrder.OrderPurchaseDtm;
            productOrderDTO.OrderCustomerId = productOrder.OrderCustomerId.GetValueOrDefault();
            productOrderDTO.OrderPaymentMode = productOrder.OrderPaymentMode;
            productOrderDTO.OrderTotalQuantity = productOrder.OrderTotalQuantity;
            productOrderDTO.OrderPrice = productOrder.OrderPrice;
            productOrderDTO.OrderTax =productOrder.OrderTax.GetValueOrDefault();
            productOrderDTO.OrderTotalPrice = productOrder.OrderTotalPrice.GetValueOrDefault();
            productOrderDTO.OrderPriority = productOrder.OrderPriority;
            productOrderDTO.OrderComments = productOrder.OrderComments;
            productOrderDTO.OrderAddress = productOrder.OrderAddress;
            productOrderDTO.Ref1 = productOrder.Ref1;
            productOrderDTO.Ref2 = productOrder.Ref2;
            if(productOrder.ProductOrderDetails!=null && productOrder.ProductOrderDetails.Count()>0)
            {
                productOrderDTO.ProductOrderDetails = new List<ProductOrderDtlDTO>();
                foreach(ProductOrderDetail productOrderDetail in productOrder.ProductOrderDetails)
                {
                    productOrderDTO.ProductOrderDetails.Add(ProductOrderDtlDTOConvertor.ConvertToProductOrderDtlDto(productOrderDetail));
                }
            }
            return productOrderDTO;


   

    }

        public static void ConvertToProductOrderEntity(ref ProductOrder productOrder, ProductOrderDTO productOrderDTO, bool isUpdate)
        {
        if (isUpdate)
        {
            productOrderDTO.OrderId = productOrder.OrderId;

        }
        else
        {
            productOrder.OrderPurchaseDtm = DateTime.Now;
            productOrder.OrderCustomerId = productOrderDTO.OrderCustomerId;
            productOrder.OrderPaymentMode = productOrderDTO.OrderPaymentMode;
            productOrder.OrderTotalQuantity = productOrderDTO.OrderTotalQuantity;
            productOrder.OrderPrice = productOrderDTO.OrderPrice ;
            productOrder.OrderTax = productOrderDTO.OrderTax;
            productOrder.OrderTotalPrice = productOrderDTO.OrderTotalPrice;
            productOrder.OrderPriority = productOrderDTO.OrderPriority;
            productOrder.OrderComments = productOrderDTO.OrderComments;
            productOrder.OrderAddress = productOrderDTO.OrderAddress;
            productOrder.Ref1 = productOrderDTO.Ref1;
            productOrder.Ref2 = productOrderDTO.Ref2;

        }



      

        }
    }
}
