using Platform.DTO;
using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductSalesService : IProductSalesService
    {
        private readonly ProductSalesRepository productSalesRepository;

        public ProductSalesService(ProductSalesRepository productSalesRepository)
        {
            this.productSalesRepository = productSalesRepository;
        }


        public List<ProductSalesDTO> GetAllProductSales()
        {
            List<ProductSalesDTO> productSalesList = new List<ProductSalesDTO>();
            var productSales = productSalesRepository.GetAll();
            if (productSales != null)
            {
                foreach (var productSale in productSales)
                {
                    productSalesList.Add(ProductSalesConvertor.ConvertToProductSaleDto(productSale));
                }

            }

            return productSalesList;

        }


        public ProductSalesDTO GetProductSalesById(int productSalesId)
        {
            ProductSalesDTO productSaleDTO = null;
            var productSales = productSalesRepository.GetById(productSalesId);
            if (productSales != null)
            {
                productSaleDTO = ProductSalesConvertor.ConvertToProductSaleDto(productSales);
            }
            return productSaleDTO;
        }



        public void AddProductSales(ProductSalesDTO productSaleDTO)
        {
            ProductSale productSale = new ProductSale();

            ProductSalesConvertor.ConvertToProductSaleEntity(ref productSale, productSaleDTO, false);
            UnitOfWork unitOfWork = new UnitOfWork();
            unitOfWork.ProductSalesRepository.Add(productSale);
            unitOfWork.SaveChanges();


        }


        public void UpdateProductSales(ProductSalesDTO productSaleDTO)
        {
            ProductSale productSale = new ProductSale();
            ProductSalesConvertor.ConvertToProductSaleEntity(ref productSale, productSaleDTO, true);
            UnitOfWork unitOfWork = new UnitOfWork();
            unitOfWork.ProductSalesRepository.Update(productSale);
            unitOfWork.SaveChanges();
        }

        public void DeleteProductSales(int productSalesId)
        {
            UnitOfWork unitOfWork = new UnitOfWork();
            unitOfWork.ProductSalesRepository.Delete(productSalesId);
            unitOfWork.SaveChanges();

        }



    }
}

