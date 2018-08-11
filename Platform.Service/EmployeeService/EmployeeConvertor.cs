using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class EmployeeConvertor
    {
        public static EmployeeDTO ConvertToEmployeeRoleDto(Employee employee)
        {
            EmployeeDTO employeeDTO = new EmployeeDTO();
            employeeDTO.EmployeeId = employee.EmployeeId;
            employeeDTO.Name = employee.Name;
            employeeDTO.UserName = employee.UserName;
            employeeDTO.Password = employee.Password;
            employeeDTO.Address = employee.Address;
            employeeDTO.City = employee.City;
            employeeDTO.PostalCode = employee.PostalCode;
            employeeDTO.MobileNumber = employee.MobileNumber;
            employeeDTO.IsActive = employee.IsActive;

            return employeeDTO;
      

    }

        public static void ConvertToEmployeeRoleEntity(ref Employee employee, EmployeeDTO employeeDTO, bool isUpdate)
        {
            if (isUpdate)
            employee.EmployeeId = employeeDTO.EmployeeId;
            employee.Name = employeeDTO.Name;
            employee.UserName = employeeDTO.UserName;
            employee.Password = employeeDTO.Password;
            employee.Address = employeeDTO.Address;
            employee.City = employeeDTO.City;
            employee.PostalCode = employeeDTO.PostalCode;
            employee.MobileNumber = employeeDTO.MobileNumber;
            employee.IsActive = employeeDTO.IsActive;


        }
    }
}
