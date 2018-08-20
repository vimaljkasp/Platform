using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.DTO
{
    public class ProductSales
    {
        public long SalesId { get; set; }

        public DateTime SalesDate { get; set; }

        public decimal SaleQuantity { get; set; }

        public long SalesAmount { get; set; }

        public long ProductMappingid { get; set; }

        public string ProductName { get; set; }
    }
}
