using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public interface IProductSiteMappingService
    {
         List<ProductSalesDTO> GetAllProductSiteMapping();

        ProductSalesDTO GetProductSiteMappinById(int productSiteMappingId);

        void AddProductSiteMapping(ProductSalesDTO customerDto);

        void UpdateProductSiteMapping(ProductSalesDTO customerDto);

        void DeleteProductSiteMapping(int productSiteMappingId);






    }
}
