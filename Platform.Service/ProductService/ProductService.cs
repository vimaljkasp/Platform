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
    public class ProductService : IProductService
    {
        private readonly ProductRepository productRepository;

        public ProductService(ProductRepository productRepository)
        {
           this.productRepository = productRepository;
        }
   

        public List<ProductDTO> GetAllProducts()
            {
                List<ProductDTO> productList = new List<ProductDTO>();
                var products = productRepository.GetAll();
                if (products != null)
                {
                    foreach (var product in products)
                    {
                    productList.Add(ProductConvertor.ConvertToProductDto(product));
                    }

                }

                return productList;

            }


            public ProductDTO GetProductById(int productId)
            {
            ProductDTO productDTO = null;
                var product = productRepository.GetById(productId);
                if (product != null)
                {
                productDTO = ProductConvertor.ConvertToProductDto(product);
                }
                return productDTO;
            }



            public void AddProduct(ProductDTO productDTO)
            {
                Product product = new Product();

            ProductConvertor.ConvertToProductEntity(ref product, productDTO, false);
                UnitOfWork unitOfWork = new UnitOfWork();
                unitOfWork.ProductRepository.Add(product);
                unitOfWork.SaveChanges();


            }


            public void UpdateProduct(ProductDTO productDTO)
            {
            Product product = new Product();
            ProductConvertor.ConvertToProductEntity(ref product, productDTO, true);
                UnitOfWork unitOfWork = new UnitOfWork();
                unitOfWork.ProductRepository.Update(product);
                unitOfWork.SaveChanges();
            }

            public void DeleteProduct(int id)
            {
                UnitOfWork unitOfWork = new UnitOfWork();
                unitOfWork.ProductRepository.Delete(id);
                unitOfWork.SaveChanges();

            }



        }
    }

