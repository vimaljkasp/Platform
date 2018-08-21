using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.DTO
{
    public class ProductOrders
    {

        public int OrderId { get; set; }

        public int ProductMappingId { get; set; }

        public int ProductOrderDetailId { get; set; }

        public string ProductName { get; set; }

        public decimal Quantity { get; set; }

        public decimal Amount { get; set; }

        public OrderStatus OrderStatus { get; set; }

        public int CustomerId { get; set; }

        public string CustomerName { get; set; }

        public string CustomerMobileNumber { get; set; }

        public DateTime OrderPlacedDtm { get; set; }
    }

    public enum OrderStatus
    {
        Pending=0,
        Completed
    }
}
