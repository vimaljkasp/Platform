
using Platform.DTO;

using Platform.Repository;
using Platform.Service;
using Platform.Sql;
using Platform.Utilities.Encryption;
using Platform.Utilities.ExceptionHandler;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class DashboardService : IDashboardService
    {
        private UnitOfWork unitOfWork;
        public DashboardService()
        {
            unitOfWork = new UnitOfWork(); 
        }

        public DashboardDTO GetDashboardDetails()
        {
            DateTime saleDate = DateTime.Now.Date;
            DashboardDTO dashboardDTO = unitOfWork.DashboardRepository.GetDashBoardDetails(saleDate);
           
            return dashboardDTO;
        }
    }
}
