
using Platform.DTO;
using Platform.Repository;
using Platform.Sql;
using Platform.Utilities.Encryption;
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
            this.CheckForExisitngEmployee(employeDTO.UserName);

            Employee employee = new Employee();
            EmployeeConvertor.ConvertToEmployeeEntity(ref employee, employeDTO, false);
            employee.Password = EncryptionHelper.Encryptword(employeDTO.Password);
            employeeRepository.Add(employee);

        }

        public void DeleteEmployee(int employeeId)
        {
            employeeRepository.Delete(employeeId);
        }

        public List<EmployeeDTO> GetAllEmployees()
        {
            List<EmployeeDTO> employeeList = new List<EmployeeDTO>();
            var employees = employeeRepository.GetAllEmployees();
            if (employees != null)
            {
                foreach (var employee in employees)
                {
                    employeeList.Add(EmployeeConvertor.ConvertToEmployeeDto(employee));
                }

            }

            return employeeList;
        }

        public EmployeeDTO GetEmployeeById(int employeId)
        {
            EmployeeDTO employeeDTO = null;
            var employee = employeeRepository.GetById(employeId);
            if (employee != null)
            {
                employeeDTO = EmployeeConvertor.ConvertToEmployeeDto(employee);
            }
            return employeeDTO;
        }

        public void UpdateEmployee(EmployeeDTO employeeDTO)
        {
           
            Employee employee = new Employee();
            EmployeeConvertor.ConvertToEmployeeEntity(ref employee, employeeDTO, true);
            employeeRepository.Update(employee);
        }


        private void CheckForExisitngEmployee(string userName)
        {
            var existingCustomer = employeeRepository.GetEmployeeByUserName(userName);
            if (existingCustomer != null)
                throw new PlatformModuleException("Employee Account Already Exist with given User Name");
        }

      

        public bool ValidateLogin(LoginDto logindto)
        {
            List<Employee> employees = employeeRepository.GetAllEmployees();
            logindto.Password = EncryptionHelper.Encryptword(logindto.Password);
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
