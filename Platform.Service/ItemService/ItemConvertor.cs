using Platform.Sql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Platform.Service
{
    public class ItemConvertor
    {
        public static ItemDTO ConvertToItemDto(ItemCategory item)
        {
            ItemDTO itemDTO = new ItemDTO();
            itemDTO.ItemId = item.ItemId;
            itemDTO.ItemCode = item.ItemCode;
            itemDTO.ItemName = item.ItemName;
            itemDTO.ItemDescription = item.ItemDescription;
  
            return itemDTO;
    

    }

        public static void ConvertToItemEntity(ref ItemCategory item, ItemDTO itemDTO, bool isUpdate)
        {
            if(isUpdate)
                item.ItemId = itemDTO.ItemId;
            item.ItemCode = itemDTO.ItemCode;
            item.ItemName = itemDTO.ItemName;
            item.ItemDescription = itemDTO.ItemDescription;


        }
    }
}
