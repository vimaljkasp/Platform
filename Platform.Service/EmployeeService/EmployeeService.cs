
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

        public void AddEmployee(EmployeeDTO employeDTO)
        {
            throw new NotImplementedException();
        }

        public void DeleteEmployee(int employeeId)
        {
            throw new NotImplementedException();
        }

        public List<EmployeeDTO> GetAllEmployees()
        {
            throw new NotImplementedException();
        }

        public EmployeeDTO GetEmployeeById(int employeId)
        {
            throw new NotImplementedException();
        }

        public void UpdateEmployee(EmployeeDTO employeeRoleDTO)
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
                throw new PlatformModuleException("The UserName that you've entered doesn't match any account");
            }
            else if(!employees.Where(e => e.UserName.Equals(logindto.Password, StringComparison.CurrentCultureIgnoreCase)).Any())
            {
                throw new PlatformModuleException("Password that you've entered doesn't match any account");

            }
            return false;
            
        }
    }
}
