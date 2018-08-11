
using Platform.Repository;
using Platform.Sql;
using Platform.Utilities.ExceptionHandler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class EmployeeService : IEmployeeService
    {
        private readonly EmployeeRepository employeeRepository;
        public EmployeeService(EmployeeRepository employeeRepository)
        {
            this.employeeRepository = employeeRepository;
        }

        public void AddEmployeeRole(EmployeeRoleDTO employeeRoleDTO)
        {
            throw new NotImplementedException();
        }

        public void DeleteEmployeeRole(int employeeRoleId)
        {
            throw new NotImplementedException();
        }

        public List<EmployeeRoleDTO> GetAllEmployeeRoles()
        {
            throw new NotImplementedException();
        }

        public EmployeeRoleDTO GetEmployeeRoleById(int employeeRoleId)
        {
            throw new NotImplementedException();
        }

        public void UpdateEmployeeRole(EmployeeRoleDTO employeeRoleDTO)
        {
            throw new NotImplementedException();
        }

        public bool ValidateLogin(LoginDto logindto)
        {
            List<Employee> employees = employeeRepository.GetAllEmployees();

            if (employees.Where(e => e.UserName.Equals(logindto.UserName, StringComparison.CurrentCultureIgnoreCase)
             && e.Password.Equals(logindto.Password, StringComparison.CurrentCultureIgnoreCase)).Any())
                return true;
            else if(!employees.Where(e=>e.UserName.Equals(logindto.UserName,StringComparison.CurrentCultureIgnoreCase)).Any())
            {
                throw new PlatformModuleException("User Not Found");
            }
                return false;
            
        }
    }
}
