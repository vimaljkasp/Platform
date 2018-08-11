using FluentValidation;
using FluentValidation.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    [Validator(typeof(ProductOrderDtlValidator))]
    public class ProductOrderDtlDTO
    {
        public long ProductOrderDetailId { get; set; }
        public Nullable<long> OrderId { get; set; }
        public Nullable<long> ProductId { get; set; }
        public Nullable<decimal> Quantity { get; set; }
        public Nullable<long> UnitPrice { get; set; }
        public Nullable<long> Total { get; set; }
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
