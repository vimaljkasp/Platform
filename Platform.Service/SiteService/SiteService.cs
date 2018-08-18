using Platform.DTO;
using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class SiteService : ISiteService
    {
        private readonly SiteRepository siteRepository;

        public SiteService(SiteRepository siteRepository)
        {
           this.siteRepository = siteRepository;
        }

            public List<SiteDTO> GetAllSites()
            {
                List<SiteDTO> siteList = new List<SiteDTO>();
                var sites = siteRepository.GetAll();
                if (sites != null)
                {
                    foreach (var site in sites)
                    {
                    siteList.Add(SiteConvertor.ConvertToSiteDTO(site));
                    }

                }

                return siteList;

            }


            public SiteDTO GetSiteById(int siteId)
            {
            SiteDTO siteDTO = null;
                var site = siteRepository.GetById(siteId);
                if (site != null)
                {
                siteDTO = SiteConvertor.ConvertToSiteDTO(site);
                }
                return siteDTO;
            }



            public void AddSite(SiteDTO siteDTO)
            {
               Site site = new Site();

                SiteConvertor.ConvertToSiteEntity(ref site, siteDTO, false);
                UnitOfWork unitOfWork = new UnitOfWork();
                unitOfWork.SiteRepository.Add(site);
                unitOfWork.SaveChanges();


            }
        

            public void UpdateSite(SiteDTO siteDTO)
            {
                Site site = new Site();
                SiteConvertor.ConvertToSiteEntity(ref site, siteDTO, true);
                UnitOfWork unitOfWork = new UnitOfWork();
                unitOfWork.SiteRepository.Update(site);
                unitOfWork.SaveChanges();
            }

            public void DeleteSite(int id)
        { 
                UnitOfWork unitOfWork = new UnitOfWork();
                unitOfWork.SiteRepository.Delete(id);
                unitOfWork.SaveChanges();

            }



        }
    }

