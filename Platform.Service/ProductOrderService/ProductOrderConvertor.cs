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
            productOrderDTO.OrderTotalPrice = productOrder.OrderTotalPrice;
            productOrderDTO.OrderTax = (double)productOrder.OrderTax/100.00;
            productOrderDTO.TotalAmount = (double)productOrder.TotalAmount/100.00;
            productOrderDTO.OrderPriority = productOrder.OrderPriority;
            productOrderDTO.OrderComments = productOrder.OrderComments;
            productOrderDTO.Ref1 = productOrder.Ref1;
            productOrderDTO.Ref2 = productOrder.Ref2;
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
            productOrder.OrderTotalPrice =(long) productOrderDTO.OrderTotalPrice*100;
            productOrder.OrderTax = (long)productOrderDTO.OrderTax*100;
            productOrder.TotalAmount = (long)productOrderDTO.TotalAmount*100;
            productOrder.OrderPriority = productOrderDTO.OrderPriority;
            productOrder.OrderComments = productOrderDTO.OrderComments;
            productOrder.Ref1 = productOrderDTO.Ref1;
            productOrder.Ref2 = productOrderDTO.Ref2;

        }



      

        }
    }
}
