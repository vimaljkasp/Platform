using FluentValidation;
using FluentValidation.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.DTO
{
    [Validator(typeof(ProductOrderDtlValidator))]
    public class ProductOrderDtlDTO
    {
        public long ProductOrderDetailId { get; set; }
        public long OrderId { get; set; }
        public long OrderProductId { get; set; }
        public decimal Quantity { get; set; }
        public double UnitPrice { get; set; }
        public double Total { get; set; }
        public int OrderStatus { get; set; }
        public System.DateTime OrderDeilveredDate { get; set; }
        public string OrderDeilveredBy { get; set; }
        public string VehicleNumber { get; set; }
        public string DriverName { get; set; }
        public string DriverNumber { get; set; }
        public string JCBDriverNumber { get; set; }
        public string RoyaltyNumber { get; set; }
        public string Ref1 { get; set; }
        public string Ref2 { get; set; }



      


    }

    public class ProductOrderDtlValidator : AbstractValidator<ProductOrderDtlDTO>
    {
        public ProductOrderDtlValidator()
        {
            //   RuleFor(x => x.CustomerId).NotEmpty().WithMessage("The UserName cannot be blank.")
            //                               .Length(1, 10).WithMessage("The User Name cannot be more than 10 characters.");

            //      RuleFor(x => x.WalletBalance).NotEmpty().WithMessage("The Password cannot be blank.");

            //       RuleFor(x => x.BirthDate).LessThan(DateTime.Today).WithMessage("You cannot enter a birth date in the future.");

            //     RuleFor(x => x.Username).Length(8, 999).WithMessage("The user name must be at least 8 characters long.");
        }
    }
}
