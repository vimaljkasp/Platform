using Platform.DTO;
using Platform.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace Platform.Controller
{
    [Route("api/OrderDetails")]
    public class OrderDetailsController : ApiController
    {

        private readonly IProductOrderDtlService _productOrderDtlService;

        public OrderDetailsController(IProductOrderDtlService productOrderDtlService)
        {
            _productOrderDtlService = productOrderDtlService;
        }



        public IEnumerable<ProductOrderDtlDTO> Get()
        {

            return _productOrderDtlService.GetAllProductOrderDtl();

        }



        public ProductOrderDtlDTO Get(int orderDetailId)
        {
            return _productOrderDtlService.GetProductOrderDtlById(orderDetailId);
        }



        //public IHttpActionResult Post([FromBody]ProductOrderDTO productOrderDTO)
        //{
        //    if (_productOrderDtlService == null)
        //        return BadRequest("Argument Null");

        //    _productOrderDtlService.AddProductOrder(productOrderDTO);

        //    return Ok();

        //}

        //Put api/Customer/5
        public IHttpActionResult Put(int orderDetailId, [FromBody]ProductOrderDtlDTO productOrderDtlDTO)
        {
            if (productOrderDtlDTO == null)
                return BadRequest("Argument Null");
            productOrderDtlDTO.ProductOrderDetailId = orderDetailId;

            _productOrderDtlService.UpdateProductOrderDtl(productOrderDtlDTO);

            return Ok();
        }

        public void Delete(int id)
        {

            _productOrderDtlService.DeleteProductOrderDtl(id);
        }




    }
}
