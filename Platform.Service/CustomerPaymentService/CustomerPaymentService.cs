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
    public class CustomerPaymentService : ICustomerPaymentService
    {
        private readonly CustomerPaymentRepository customerPaymentRepository;

        private readonly UnitOfWork unitOfWork;

        public CustomerPaymentService(CustomerPaymentRepository customerPaymentRepository)
        {
            this.customerPaymentRepository = customerPaymentRepository;
            this.unitOfWork = new UnitOfWork();
        }

        public void AddCustomerPayment(CustomerPaymentDTO customerPaymentDTO)
        {

            CustomerPaymentTransaction customerPaymentTransaction = new CustomerPaymentTransaction();
            CustomerPaymentConvertor.ConvertToCustomerPaymentEntity(ref customerPaymentTransaction, customerPaymentDTO, false);
            customerPaymentRepository.Add(customerPaymentTransaction);
            this.UpdateCustomerWallet(customerPaymentDTO);
        }

        private void UpdateCustomerWallet(CustomerPaymentDTO customerPaymentDTO)
        {
            var customerWallet = unitOfWork.CustomerWalletRepository.GetByCustomerId(customerPaymentDTO.CustomerId);
            if (customerWallet != null)
            {
                customerWallet.WalletBalance -= customerPaymentDTO.PaymentCrAmount;
                if(customerWallet.WalletBalance>0)
                customerWallet.AmountDueDate = DateTime.Now.AddDays(10);
                unitOfWork.CustomerWalletRepository.Update(customerWallet);
            }
            else
            {
                customerWallet = new CustomerWallet();
                customerWallet.CustomerId = customerPaymentDTO.CustomerId;
                customerWallet.WalletBalance = customerPaymentDTO.PaymentCrAmount;
                customerWallet.AmountDueDate = DateTime.Now.AddDays(10);
                unitOfWork.CustomerWalletRepository.Add(customerWallet);
            }
        }

        public void DeleteCustomerPayemt(int customerPaymentId)
        {
            this.customerPaymentRepository.Delete(customerPaymentId);
        }

        public List<CustomerPaymentDTO> GetAllCustomerPayments()
        {
            List<CustomerPaymentDTO> customerPaymentsList = new List<CustomerPaymentDTO>();
            var customerPayments = customerPaymentRepository.GetAll();
            if (customerPayments != null)
            {
                foreach (var customerPayment in customerPayments)
                {
                    customerPaymentsList.Add(CustomerPaymentConvertor.ConvertToCustomerPaymentDto(customerPayment));
                }

            }

            return customerPaymentsList;
        }

        public CustomerPaymentDTO GetCustomerPaymentById(int customerPaymentId)
        {
            CustomerPaymentDTO customerPaymentDTO = null;
            var customerPayment = customerPaymentRepository.GetById(customerPaymentId);
            if (customerPayment != null)
            {
                customerPaymentDTO = CustomerPaymentConvertor.ConvertToCustomerPaymentDto(customerPayment);
            }
            return customerPaymentDTO;
        }

        public void UpdateCustomerPayment(CustomerPaymentDTO customerPaymentDTO)
        {
            CustomerPaymentTransaction customerPaymentTransaction = null;
            CustomerPaymentConvertor.ConvertToCustomerPaymentEntity(ref customerPaymentTransaction, customerPaymentDTO, true);
            customerPaymentRepository.Update(customerPaymentTransaction);
        }
    }
}
