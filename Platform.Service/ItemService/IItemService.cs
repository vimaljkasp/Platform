using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public interface IItemService
    {
         List<ItemDTO> GetAllItemCategory();

        ItemDTO GetItemCategoryById(int itemId);

        void AddItemCategory(ItemDTO customerDto);

        void UpdateItemCategory(ItemDTO customerDto);

        void DeleteItemCategory(int itemId);






    }
}
