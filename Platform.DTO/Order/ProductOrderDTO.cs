using FluentValidation;
using FluentValidation.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.DTO
{
    [Validator(typeof(ProductOrderValidator))]
    public class ProductOrderDTO
    {
        public long OrderId { get; set; }
  
        public System.DateTime OrderPurchaseDtm { get; set; }
     
      
        public int OrderCustomerId { get; set; }
        public int OrderPaymentMode { get; set; }
        public string OrderComments { get; set; }
        public decimal OrderTotalQuantity { get; set; }

        public decimal OrderTotalPrice { get; set; }
        public decimal OrderTax { get; set; }
        public decimal OrderPrice { get; set; }
        public decimal PaidAmount { get; set; }
        public string OrderPriority { get; set; }
        public string PaymentReceivedBy { get; set; }
        public string Ref1 { get; set; }
        public string Ref2 { get; set; }

        public string OrderAddress { get; set; }
        //Will be used if new customer
        public string CustomerName { get; set; }
        public string CustomerMobileNumber { get; set; }



       public List<ProductOrderDtlDTO> ProductOrderDetails { get; set; }
    }

    public class ProductOrderValidator : AbstractValidator<ProductOrderDTO>
    {
        public ProductOrderValidator()
        {
            //   RuleFor(x => x.CustomerId).NotEmpty().WithMessage("The UserName cannot be blank.")
            //                               .Length(1, 10).WithMessage("The User Name cannot be more than 10 characters.");

               //  RuleFor(x => x.).NotEmpty().WithMessage("The Password cannot be blank.");

            //       RuleFor(x => x.BirthDate).LessThan(DateTime.Today).WithMessage("You cannot enter a birth date in the future.");

            //     RuleFor(x => x.Username).Length(8, 999).WithMessage("The user name must be at least 8 characters long.");
        }
    }
}
