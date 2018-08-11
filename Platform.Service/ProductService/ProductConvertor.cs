using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductConvertor
    {
        public static ProductDTO ConvertToProductDto(Product product)
        {
            ProductDTO productDTO = new ProductDTO();
            productDTO.ProductId = product.ProductId;
            productDTO.ProductCode = product.ProductCode;
            productDTO.ProductName = product.ProductName;
            productDTO.ProductDescription = product.ProductDescription;
            productDTO.ProductQuantity = product.ProductQuantity;
            productDTO.ProductPrice = product.ProductPrice;
            productDTO.IsActive = product.IsActive;
            productDTO.Ref1 = product.Ref1;
            productDTO.Ref2 = product.Ref2;
            return productDTO;



    }

        public static void ConvertToProductEntity(ref Product product, ProductDTO productDTO, bool isUpdate)
        {
            if(isUpdate)
                product.ProductId = productDTO.ProductId;

            product.ProductCode = productDTO.ProductCode;
            product.ProductName = productDTO.ProductName;
            product.ProductDescription = productDTO.ProductDescription;
            product.ProductQuantity = productDTO.ProductQuantity;
            product.ProductPrice = productDTO.ProductPrice;
            product.IsActive = productDTO.IsActive;
            product.Ref1 = productDTO.Ref1;
            product.Ref2 = productDTO.Ref2;


        }
    }
}
