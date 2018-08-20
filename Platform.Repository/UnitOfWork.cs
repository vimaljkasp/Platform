using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class UnitOfWork : IDisposable
    {
        private  SiteRepository siteRepository;
        private SiteConfigurationRepository siteConfigurationRepository;
        private ProductRepository productRepository;
        private ProductOrderRepository productOrderRepository;
        private ProductOrderDtlRepository productOrderDtlRepository;
        private CustomerRepository customerRepository;
        private ModuleDashboardRepository moduleDashboardRepository;
        private ProductSalesRepository productSalesRepository;
        private CustomerWalletRepository customerWalletRepositoy;
        private CustomerPaymentRepository customerPaymentRepository;
        private DashboardRepository dashboardRepository;
        PlatformDBEntities _repository;
        public UnitOfWork()
        {
            _repository= new PlatformDBEntities();
        }

        public SiteRepository SiteRepository
        {
            get
            {
                if (SiteRepository == null)
                    return siteRepository = new SiteRepository();
              
                else
                {
                    return siteRepository;
                }
            }

        }

        public SiteConfigurationRepository SiteConfigurationRepository
        {
            get
            {
                if (siteConfigurationRepository == null)
                    return siteConfigurationRepository = new SiteConfigurationRepository();
                else
                {
                    return siteConfigurationRepository;

                }
            }

        }

        public CustomerRepository CustomerRepository
        {
            get
            {
                if (customerRepository == null)
                    return customerRepository = new CustomerRepository();

                else
                {
                    return customerRepository;
                }
            }

        }

        public ProductRepository ProductRepository
        {
            get
            {
                if (productRepository == null)
                    return productRepository = new ProductRepository();
                else
                {
                    return productRepository;

                }
            }

        }

        public ProductSalesRepository ProductSalesRepository
        {
            get
            {
                if (productSalesRepository == null)
                    return productSalesRepository = new ProductSalesRepository();
                else
                {
                    return productSalesRepository;

                }
            }

        }

        public ProductOrderRepository ProductOrderRepository
        {
            get
            {
                if (productOrderRepository == null)
                    return productOrderRepository = new ProductOrderRepository();
                else
                {
                    return productOrderRepository;

                }
            }

        }

        public ProductOrderDtlRepository ProductOrderDtlRepository
        {
            get
            {
                if (productOrderDtlRepository == null)
                    return productOrderDtlRepository = new ProductOrderDtlRepository();

                else
                {
                    return productOrderDtlRepository;

                }
            }

        }


        public ModuleDashboardRepository ModuleDashboardRepository
        {
            get
            {
                if (moduleDashboardRepository == null)
                    return moduleDashboardRepository = new ModuleDashboardRepository();

                else
                {
                    return moduleDashboardRepository;

                }
            }

        }


        public CustomerWalletRepository CustomerWalletRepository
        {
            get
            {
                if (customerWalletRepositoy == null)
                    return customerWalletRepositoy = new CustomerWalletRepository();
                else
                    return customerWalletRepositoy;
            }
        }

        public CustomerPaymentRepository CustomerPaymentRepository
        {
            get
            {
                if (customerPaymentRepository == null)
                    return customerPaymentRepository = new CustomerPaymentRepository();
                else
                    return customerPaymentRepository;
            }
        }


        public DashboardRepository DashboardRepository
        {
            get
            {
                if (dashboardRepository == null)
                    return dashboardRepository = new DashboardRepository();
                else
                    return dashboardRepository;
            }
        }



        //To save multiple repository and maintain consistency
        public void SaveChanges()
        {
            this._repository.SaveChanges();
        }


        protected void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (_repository != null)
                {
                    _repository.Dispose();
                    _repository = null;
                }
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

    }
}
