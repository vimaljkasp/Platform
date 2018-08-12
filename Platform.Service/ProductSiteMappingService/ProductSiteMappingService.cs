using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductSiteMappingService : IProductSiteMappingService
    {
        private readonly ProductSiteMappingRepository productSiteMappingRepository;


        public ProductSiteMappingService(ProductSiteMappingRepository productSiteMappingRepository)
        {
            this.productSiteMappingRepository = productSiteMappingRepository;
        }
        


        public void AddProductSiteMapping(ProductSiteMappingDTO productSiteMappingDTO)
        {
            ProductSiteMapping productSiteMapping = new ProductSiteMapping();

            ProductSiteMappingConvertor.ConvertToProductSiteMappingEntity(ref productSiteMapping, productSiteMappingDTO, false);
            productSiteMappingRepository.Add(productSiteMapping);
        }

        public void DeleteProductSiteMapping(int productSiteMappingId)
        {
            productSiteMappingRepository.Delete(productSiteMappingId);
        }

        public List<ProductSiteMappingDTO> GetAllProductSiteMapping()
        {
            List<ProductSiteMappingDTO> productSiteMappingList = new List<ProductSiteMappingDTO>();
            var productSiteMappings = productSiteMappingRepository.GetAll();
            if (productSiteMappings != null)
            {
                foreach (var productSiteMapping in productSiteMappings)
                {
                    productSiteMappingList.Add(ProductSiteMappingConvertor.ConvertToProductSiteMappingDto(productSiteMapping));
                }

            }

            return productSiteMappingList;
        }

        public ProductSiteMappingDTO GetProductSiteMappinById(int productSiteMappingId)
        {
            ProductSiteMappingDTO productSiteMappingDTO = null;
            var productSiteMapping = productSiteMappingRepository.GetById(productSiteMappingId);
            if (productSiteMapping != null)
            {
                productSiteMappingDTO = ProductSiteMappingConvertor.ConvertToProductSiteMappingDto(productSiteMapping);
            }
            return productSiteMappingDTO;
        }

        public void UpdateProductSiteMapping(ProductSiteMappingDTO productSiteMappingDTO)
        {
            ProductSiteMapping productSiteMapping = new ProductSiteMapping();
            ProductSiteMappingConvertor.ConvertToProductSiteMappingEntity(ref productSiteMapping, productSiteMappingDTO, true);
            productSiteMappingRepository.Update(productSiteMapping);
        }
    }
}
