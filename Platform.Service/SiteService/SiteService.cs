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

        public void AddSite(SiteDTO customerDto)
        {
            throw new NotImplementedException();
        }

        public void DeleteSite(int siteId)
        {
            throw new NotImplementedException();
        }

        public List<SiteDTO> GetAllSites()
        {
            throw new NotImplementedException();
        }

        public SiteDTO GetSiteById(int siteId)
        {
            throw new NotImplementedException();
        }

        public void UpdateSite(SiteDTO customerDto)
        {
            throw new NotImplementedException();
        }
    }
}
