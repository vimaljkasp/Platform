using Platform.Repository;
using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ItemService : IItemService
    {
        private readonly ItemRepository itemRepository;

        public ItemService(ItemRepository itemRepository)
        {
            this.itemRepository = itemRepository;
        }


        public void AddItemCategory(ItemCategoryDTO itemDTO)
        {
          
            ItemCategory itemCategory = new ItemCategory();

            ItemConvertor.ConvertToItemCategoryEntity(ref itemCategory, itemDTO, false);
            itemRepository.Add(itemCategory);
        }

        public void DeleteItemCategory(int itemId)
        {
            itemRepository.Delete(itemId);
        }

        public List<ItemCategoryDTO> GetAllItemCategory()
        {
            List<ItemCategoryDTO> itemCategoryList = new List<ItemCategoryDTO>();
            var itemCategories = itemRepository.GetAll();
            if (itemCategories != null)
            {
                foreach (var itemCategory in itemCategories)
                {
                    itemCategoryList.Add(ItemConvertor.ConvertToItemCategoryDto(itemCategory));
                }

            }

            return itemCategoryList;
        }

        public ItemCategoryDTO GetItemCategoryById(int itemId)
        {
            ItemCategoryDTO itemCategoryDTO = null;
            var itemCategory = itemRepository.GetById(itemId);
            if (itemRepository != null)
            {
                itemCategoryDTO = ItemConvertor.ConvertToItemCategoryDto(itemCategory);
            }
            return itemCategoryDTO;
        }

        public void UpdateItemCategory(ItemCategoryDTO itemCategoryDTO)
        {
            ItemCategory itemCategory = new ItemCategory();
            ItemConvertor.ConvertToItemCategoryEntity(ref itemCategory, itemCategoryDTO, true);
            itemRepository.Update(itemCategory);
        }
    }
}
