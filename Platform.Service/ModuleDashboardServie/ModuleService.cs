﻿using Platform.DTO;
using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ModuleService : IModuleService
    {
        private readonly ModuleDashboardRepository moduleDashboardRepository;

        public ModuleService(ModuleDashboardRepository moduleDashboardRepository)
        {
            this.moduleDashboardRepository = moduleDashboardRepository;
        }


        public List<ModuleDTO> GetAllModules()
        {
            List<ModuleDTO> moduleList = new List<ModuleDTO>();
            var modules = moduleDashboardRepository.GetAll();
            if (modules != null)
            {
                foreach (var module in modules)
                {
                    moduleList.Add(ModuleConvertor.ConvertToModuleDto(module));
                }

            }

            return moduleList;

        }


        public ModuleDTO GetModuleById(int moduleId)
        {
            ModuleDTO moduleDTO = null;
            var module = moduleDashboardRepository.GetById(moduleId);
            if (module != null)
            {
                moduleDTO = ModuleConvertor.ConvertToModuleDto(module);
            }
            return moduleDTO;
        }



        public void AddModule(ModuleDTO moduleDTO)
        {
            Module module = new Module();

            ModuleConvertor.ConvertToModuleEntity(ref module, moduleDTO, false);
            UnitOfWork unitOfWork = new UnitOfWork();
            unitOfWork.ModuleDashboardRepository.Add(module);
            unitOfWork.SaveChanges();


        }


        public void UpdateModule(ModuleDTO moduleDTO)
        {
            Module module = new Module();
            ModuleConvertor.ConvertToModuleEntity(ref module, moduleDTO, true);
            UnitOfWork unitOfWork = new UnitOfWork();
            unitOfWork.ModuleDashboardRepository.Update(module);
            unitOfWork.SaveChanges();
        }

        public void DeleteModule(int moduleId)
        {
            UnitOfWork unitOfWork = new UnitOfWork();
            unitOfWork.ModuleDashboardRepository.Delete(moduleId);
            unitOfWork.SaveChanges();

        }



    }
}

