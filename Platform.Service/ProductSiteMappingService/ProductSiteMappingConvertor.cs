using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductSiteMappingConvertor
    {
        public static ProductSiteMappingDTO ConvertToCustomerDto(ProductSiteMapping productSiteMapping)
        {
            ProductSiteMappingDTO productSiteMappingDTO = new ProductSiteMappingDTO();
            productSiteMappingDTO.ProductMappingId = productSiteMapping.ProductMappingId;
            productSiteMappingDTO.SiteId = productSiteMapping.SiteId;
            productSiteMappingDTO.ItemId = productSiteMapping.ItemId;
            productSiteMappingDTO.ProductId = productSiteMapping.ProductId;

            return productSiteMappingDTO;


        }

        public static void ConvertToCustomerEntity(ref Customer customer, CustomerDto customerdto, bool isUpdate)
        {

            customer.Name = customerdto.Name;
            customer.AddressLine1 = customerdto.AddressLine1;
            customer.AddressLine2 = customerdto.AddressLine2;
            customer.City = customerdto.City;
            customer.District = customerdto.District;
            customer.MobileNumber = customerdto.MobileNumber;
            customer.HomePhone = customerdto.HomePhone;
            customer.State = customerdto.State;
            customer.PostalCode = customerdto.PostalCode;
            
            
        }
    }
}
