using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using Platform.DTO;
using Platform.Sql;


namespace Platform.Repository
{
    public class DashboardRepository 
    {

        public DashboardDTO GetDashBoardDetails(DateTime salesDate)
        {
            DashboardDTO dashboardDTO = new DashboardDTO()
            {
                productOrderList = new List<ProductOrders>(),
                productSalesList=new List<ProductSales>(),
                customerBalanceList=new List<CustomerBalance>()
            };
            using (var db = new PlatformDBEntities())
            {
                // Create a SQL command to execute the sproc 
                var cmd = db.Database.Connection.CreateCommand();
                cmd.CommandText = "[dbo].[GetDashBoardDetails]";

                try
                {
                    db.Database.Connection.Open();

                    // Run the sproc  
                    var reader = cmd.ExecuteReader();
                    while (reader.Read())

                        dashboardDTO.productOrderList.Add(
                            new ProductOrders()
                            {
                                CustomerId = reader.GetInt32(0),
                                CustomerName = reader.GetString(1),
                                CustomerMobileNumber = reader.GetString(2),
                                OrderId = reader.GetInt32(3),
                                ProductOrderDetailId = reader.GetInt32(4),
                                ProductMappingId = reader.GetInt32(5),
                                ProductName = reader.GetString(6),
                                Quantity = reader.GetDecimal(7),
                                Amount = reader.GetDecimal(8),
                                OrderStatus = (OrderStatus)reader.GetInt32(9),

                                OrderPlacedDtm = reader.GetDateTime(10),

                            });



                    reader.NextResult();
                    while (reader.Read())
                    {
                        dashboardDTO.productSalesList.Add(
                            new ProductSales()
                            {
                                SalesId = reader.GetInt32(0),
                                SalesDate = reader.GetDateTime(1),
                                SaleQuantity = reader.GetDecimal(2),
                                SalesAmount = reader.GetDecimal(3),
                                ProductMappingId = reader.GetInt32(4),
                                ProductName = reader.GetString(5)
                            });
                    }
                    reader.NextResult();
                    while (reader.Read())
                    {
                        dashboardDTO.customerBalanceList.Add(
                            new CustomerBalance()
                            {
                                CustomerId = reader.GetInt32(0),
                                CustomerName = reader.GetString(1),
                                PendingAmount = reader.GetDecimal(2),
                                MobileNumber = reader.GetString(3),
                            });
                    }

                }

                finally
                {
                    db.Database.Connection.Close();
                }
            }
            return dashboardDTO;
        }

     

     

    }
}
