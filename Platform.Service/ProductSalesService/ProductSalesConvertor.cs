using Platform.DTO;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductSalesConvertor
    {
        public static ProductSalesDTO ConvertToProductSaleDto(ProductSale sale)
        {
            ProductSalesDTO productSalesDTO = new ProductSalesDTO();
            productSalesDTO.SalesId = sale.SalesId;
            productSalesDTO.SalesDate = sale.SalesDate;
            productSalesDTO.SalesProductId = sale.SalesProductId;
            productSalesDTO.SalesQuantity = sale.SalesQuantity;
            productSalesDTO.SalesPrice = sale.SalesPrice;
            productSalesDTO.Ref1 = sale.Ref1;
            productSalesDTO.Ref2 = sale.Ref2;
   
            return productSalesDTO;


        }

        public static void ConvertToProductSaleEntity(ref ProductSale sale, ProductSalesDTO productSalesDTO, bool isUpdate)
        {
            if(isUpdate)
            sale.SalesId = productSalesDTO.SalesId;

            sale.SalesDate = productSalesDTO.SalesDate;
            sale.SalesProductId = productSalesDTO.SalesProductId;
            sale.SalesQuantity = productSalesDTO.SalesQuantity;
            sale.SalesPrice = productSalesDTO.SalesPrice;
            sale.Ref1 = productSalesDTO.Ref1;
            sale.Ref2 = productSalesDTO.Ref2;


        }
    }
}
