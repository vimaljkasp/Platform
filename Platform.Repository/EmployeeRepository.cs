using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Repository
{
    public class EmployeeRepository : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();

        public List<Employee> GetAllEmployees()
        {
            List<Employee> employees = new List<Employee>();
            
                 employees = _repository.Employees.ToList<Sql.Employee>();
            
          
            return employees;
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
