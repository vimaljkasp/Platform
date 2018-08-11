using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public interface ISiteConfigurationService
    {
         List<SiteConfigurationDTO> GetAllSiteConfigurations();

        SiteConfigurationDTO GetSiteConfigurationById(int siteConfigurationId);

        void AddSiteConfiguration(SiteConfigurationDTO customerDto);

        void UpdateSiteConfiguration(SiteConfigurationDTO customerDto);

        void DeleteSiteConfiguration(int siteConfigurationId);






    }
}
