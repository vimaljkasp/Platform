using Platform.DTO;
using Platform.Repository;
using Platform.Sql;
using Platform.Utilities.ExceptionHandler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ProductOrderService : IProductOrderService
    {
        private UnitOfWork unitOfWork;
        public ProductOrderService()
        {
             unitOfWork = new UnitOfWork();
        }

        public void AddProductOrder(ProductOrderDTO productOrderDTO)
        {
            ProductOrder productOrder = new ProductOrder();
            ProductOrderDetail productOrderDetail;
        
                if (productOrderDTO.ProductOrderDetails != null && productOrderDTO.ProductOrderDetails.Count() > 0)
            {
                //check for customer 
                if (productOrderDTO.OrderCustomerId == 0)
                    productOrderDTO.OrderCustomerId = this.AddCustomer(productOrderDTO);


                 //Calculate Order Total Quantity and Total Price
                productOrderDTO.OrderTotalQuantity = (int)productOrderDTO.ProductOrderDetails.Sum(q => q.Quantity);
                productOrderDTO.OrderTotalPrice = (long)productOrderDTO.ProductOrderDetails.Sum(p => p.Total);

                    //Calulate Tax
                    this.CalcualteOrderTax(productOrderDTO);

                ProductOrderConvertor.ConvertToProductOrderEntity(ref productOrder, productOrderDTO, false);
                List<ProductOrderDetail> productOrderDetails = new List<ProductOrderDetail>();
                foreach (ProductOrderDtlDTO productOrderDtlDTO in productOrderDTO.ProductOrderDetails)
                {
                    productOrderDtlDTO.OrderId = productOrder.OrderId;
                    productOrderDetail = new ProductOrderDetail();
                    ProductOrderDtlDTOConvertor.ConvertToProductOrderDetailEntity(ref productOrderDetail, productOrderDtlDTO, false);
                    productOrderDetails.Add(productOrderDetail);
                }
         
                productOrder.ProductOrderDetails = productOrderDetails;
                unitOfWork.ProductOrderRepository.Add(productOrder);

                //Add Customer Payment Transaction
                this.AddCustomerPaymentTransaction(productOrderDTO);


                //Add or Update Customer Wallet
                this.AddOrUpdateCustomerWallet(productOrderDTO);

                //Add or Update ProductSales
                this.AddOrUpdateProductSales(productOrderDTO);

                //    unitOfWork.SaveChanges();

            }

            else
            {
                throw new PlatformModuleException("Order Details Not Found !");
            }
          
           
        }

        public void DeleteProductOrder(int productId)
        {
            throw new NotImplementedException();
        }

        public List<ProductOrderDTO> GetAllProductOrders()
        {
            throw new NotImplementedException();
        }

        public ProductOrderDTO GetProductOrderById(int productId)
        {
            throw new NotImplementedException();
        }

        public void UpdateProductOrder(ProductOrderDTO productOrderDTO)
        {
            throw new NotImplementedException();
        }


        private void CalcualteOrderTax(ProductOrderDTO productOrderDTO)
        {

            bool isTaxEnable = Convert.ToBoolean(unitOfWork.SiteConfigurationRepository.GetSiteConfigurationByKeyTypeAndKeyName("OrderTax", "IsEnable", "False"));
            if(isTaxEnable)
            {
                double taxPrecentage = Convert.ToDouble(unitOfWork.SiteConfigurationRepository.GetSiteConfigurationByKeyTypeAndKeyName("OrderTax", "Percentage", "7"));
                productOrderDTO.OrderTax = (long)((productOrderDTO.OrderTotalPrice * taxPrecentage) / 100.00);
             }
            else
            {
                productOrderDTO.OrderTax = 0;
                
            }

            productOrderDTO.TotalAmount = productOrderDTO.OrderTotalPrice + productOrderDTO.OrderTax;
        }

        private void AddOrUpdateCustomerWallet(ProductOrderDTO productOrderDTO)
        {
            var customerWallet = unitOfWork.CustomerWalletRepository.GetByCustomerId(productOrderDTO.OrderCustomerId);
            if (customerWallet != null)
            {
                customerWallet.WalletBalance += (long)productOrderDTO.TotalAmount * 100;
                unitOfWork.CustomerWalletRepository.Update(customerWallet);
            }
            else
            {
                customerWallet = new CustomerWallet();
                customerWallet.CustomerId = productOrderDTO.OrderCustomerId;
                customerWallet.WalletBalance = (long)productOrderDTO.TotalAmount * 100;
                customerWallet.AmountDueDate = DateTime.Now.AddDays(10);
                unitOfWork.CustomerWalletRepository.Add(customerWallet);
            }
        }

        private void AddCustomerPaymentTransaction(ProductOrderDTO productOrderDTO)
        {
            CustomerPaymentTransaction customerPaymentTransaction = new CustomerPaymentTransaction();
            customerPaymentTransaction.CustomerId = productOrderDTO.OrderCustomerId;
            customerPaymentTransaction.PaymentDate = DateTime.Now;

            if (productOrderDTO.PaidAmount > 0)
            {
                customerPaymentTransaction.PaymentCrAmount = (long)productOrderDTO.PaidAmount * 100;
                customerPaymentTransaction.PaymentReceivedBy = productOrderDTO.PaymentReceivedBy;
            }
            else
            {
                customerPaymentTransaction.PaymentDrAmount = (long)productOrderDTO.TotalAmount * 100;
                customerPaymentTransaction.PaymentReceivedBy = "No Payment";

            }
            unitOfWork.CustomerPaymentRepository.Add(customerPaymentTransaction);
        }

        private int AddCustomer(ProductOrderDTO productOrderDTO)
        {
            Customer customer = new Customer();
            customer.Name = productOrderDTO.CustomerName;
            customer.MobileNumber = productOrderDTO.CustomerMobileNumber;
            unitOfWork.CustomerRepository.Add(customer);
            return customer.CustomerId;
        }


        private void AddOrUpdateProductSales(ProductOrderDTO productOrderDTO)
        {
            foreach(ProductOrderDtlDTO productOrderDtlDto in productOrderDTO.ProductOrderDetails)
            {
                var sales=unitOfWork.ProductSalesRepository.GetByProductAndSalesDate(productOrderDtlDto.OrderProductId, DateTime.Now.Date);
                if(sales==null)
                {
                    ProductSale productSale = new ProductSale();
                    productSale.SalesDate = DateTime.Now.Date;
                    productSale.SalesPrice =(long) productOrderDtlDto.Total * 100;
                    productSale.SalesProductId = productOrderDtlDto.OrderProductId;
                    productSale.SalesQuantity =(int) productOrderDtlDto.Quantity;
                    unitOfWork.ProductSalesRepository.Add(productSale);
                }
                else
                {
                    sales.SalesQuantity+= (int)productOrderDtlDto.Quantity;
                    sales.SalesPrice += (long)productOrderDtlDto.Total * 100;
                    unitOfWork.ProductSalesRepository.Update(sales);
                }
            }
        }

    }
}
