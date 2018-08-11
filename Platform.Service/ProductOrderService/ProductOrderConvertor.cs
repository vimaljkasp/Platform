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
            productOrderDTO.OrderId = productOrder.OrderId;
            productOrderDTO.OrderDate = productOrder.OrderDate;
            productOrderDTO.OrderProductId = productOrder.OrderProductId;
            productOrderDTO.OrderPurchaseDtm = productOrder.OrderPurchaseDtm;
            productOrderDTO.OrderQuantity = productOrder.OrderQuantity;
            productOrderDTO.OrderPrice = productOrder.OrderPrice;
            productOrderDTO.OrderStatus = productOrder.OrderStatus;
            productOrderDTO.OrderDeilveredDate = productOrder.OrderDeilveredDate;
            productOrderDTO.OrderDeilveredBy = productOrder.OrderDeilveredBy;
            productOrderDTO.OrderCustomerId = productOrder.OrderCustomerId;
            productOrderDTO.OrderPaymentMode = productOrder.OrderPaymentMode;
            productOrderDTO.OrderComments = productOrder.OrderComments;
            productOrderDTO.OrderAmount = productOrder.OrderAmount;
            productOrderDTO.OrderTax = productOrder.OrderTax;
            productOrderDTO.TotalAmount = productOrder.TotalAmount;
            productOrderDTO.VehicleNumber = productOrder.VehicleNumber;
            productOrderDTO.DriverName = productOrder.DriverName;
            productOrderDTO.DriverNumber = productOrder.DriverNumber;
            productOrderDTO.JCBDriverNumber = productOrder.JCBDriverNumber;
            productOrderDTO.RoyaltyNumber = productOrder.RoyaltyNumber;
            productOrderDTO.OrderPriority = productOrder.OrderPriority;
            productOrderDTO.Ref1 = productOrder.Ref1;
            productOrderDTO.Ref2 = productOrder.Ref2;
            return productOrderDTO;


   

    }

        public static void ConvertToProductOrderEntity(ref ProductOrder productOrder, ProductOrderDTO productOrderDTO, bool isUpdate)
        {
            if(isUpdate)
            productOrderDTO.OrderId = productOrder.OrderId;

            productOrder.OrderDate = productOrderDTO.OrderDate;
            productOrder.OrderProductId = productOrderDTO.OrderProductId;
            productOrder.OrderPurchaseDtm = productOrderDTO.OrderPurchaseDtm;
            productOrder.OrderQuantity = productOrderDTO.OrderQuantity;
            productOrder.OrderPrice = productOrderDTO.OrderPrice;
            productOrder.OrderStatus = productOrderDTO.OrderStatus;
            productOrder.OrderDeilveredDate = productOrderDTO.OrderDeilveredDate;
            productOrder.OrderDeilveredBy = productOrderDTO.OrderDeilveredBy;
            productOrder.OrderCustomerId = productOrderDTO.OrderCustomerId;
            productOrder.OrderPaymentMode = productOrderDTO.OrderPaymentMode;
            productOrder.OrderComments = productOrderDTO.OrderComments;
            productOrder.OrderAmount = productOrderDTO.OrderAmount;
            productOrder.OrderTax = productOrderDTO.OrderTax;
            productOrder.TotalAmount = productOrderDTO.TotalAmount;
            productOrder.VehicleNumber = productOrderDTO.VehicleNumber;
            productOrder.DriverName = productOrderDTO.DriverName;
            productOrder.DriverNumber = productOrderDTO.DriverNumber;
            productOrder.JCBDriverNumber = productOrderDTO.JCBDriverNumber;
            productOrder.RoyaltyNumber = productOrderDTO.RoyaltyNumber;
            productOrder.OrderPriority = productOrderDTO.OrderPriority;
            productOrder.Ref1 = productOrderDTO.Ref1;
            productOrder.Ref2 = productOrderDTO.Ref2;


        }
    }
}
