using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Platform.Sql;

namespace Platform.Repository
{
    public class SiteRepository : IDisposable
    {

        PlatformDBEntities _repository = new PlatformDBEntities();
        public List<Site> GetAll()
        {

            List<Site> siteList = new List<Site>();
             siteList = _repository.Sites.ToList<Sql.Site>();


            return siteList;
        }

        public Site GetById(int siteId)
        {
            Site site = new Site();

             site = _repository.Sites.FirstOrDefault(x => x.SiteId == siteId);



            return site;
        }


        public void Add(Site site)
        {




            if (site != null)
            {
                _repository.Sites.Add(site);
                _repository.SaveChanges();

            }




        }

        public void Update(Site site)
        {
          
                if (site != null)
                {
                    _repository.Entry<Sql.Site>(site).State = System.Data.Entity.EntityState.Modified;
                    _repository.SaveChanges();

                }


        }

        public void Delete(int siteId)
        {
            var site = _repository.Sites.Where(x => x.SiteId == siteId).FirstOrDefault();
            if (site != null)
                _repository.Sites.Remove(site);

            _repository.SaveChanges();

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
