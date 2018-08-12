using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class EmployeeRoleService : IEmployeeRoleService

    {
        private readonly EmployeeRoleRepository employeeRoleRepository;
        
        public EmployeeRoleService(EmployeeRoleRepository employeeRoleRepository)
        {
            this.employeeRoleRepository = employeeRoleRepository;
        }

        public List<EmployeeRoleDTO> GetAllEmployeeRoles()
        {
            List<EmployeeRoleDTO> employeeRoleList = new List<EmployeeRoleDTO>();
            var employeeRoles = employeeRoleRepository.GetAll();
            if (employeeRoles != null)
            {
                foreach (var employee in employeeRoles)
                {
                    employeeRoleList.Add(EmployeeRoleConvertor.ConvertToEmployeeRoleDto(employee));
                }

            }

            return employeeRoleList;

        }


        public EmployeeRoleDTO GetEmployeeRoleById(int employeeRoleId)
        {
            EmployeeRoleDTO employeeRoleDTO = null;
            var employeeRole = employeeRoleRepository.GetById(employeeRoleId);
            if (employeeRole != null)
            {
                employeeRoleDTO = EmployeeRoleConvertor.ConvertToEmployeeRoleDto(employeeRole);
            }
            return employeeRoleDTO;
        }

        public void AddEmployeeRole(EmployeeRoleDTO employeeRoleDTO)
        {
            EmployeeRole employeeRole = new EmployeeRole();
            EmployeeRoleConvertor.ConvertToEmployeeRoleEntity(ref employeeRole, employeeRoleDTO, false);
            employeeRoleRepository.Add(employeeRole);
            
        }

        public void UpdateEmployeeRole(EmployeeRoleDTO employeeRoleDTO)
        {
            EmployeeRole employeeRole = null;
            EmployeeRoleConvertor.ConvertToEmployeeRoleEntity(ref employeeRole, employeeRoleDTO, true);
            employeeRoleRepository.Update(employeeRole);
        }

        public void DeleteEmployeeRole(int employeeRoleId)
        {
            employeeRoleRepository.Delete(employeeRoleId);
        }

    }
}
