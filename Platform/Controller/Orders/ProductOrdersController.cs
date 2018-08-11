using Platform.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace Platform.Controller
{
    [Route("api/ProductOrders")]
    public class ProductOrdersController : ApiController
    {

        private readonly IProductOrderService _productOrderService;

        public ProductOrdersController(IProductOrderService productOrderService)
        {
            _productOrderService = productOrderService;
        }

       
        [Authorize]
        public IEnumerable<ProductOrderDTO> Get()
        {

            return _productOrderService.GetAllProductOrders();

        }


   
        public ProductOrderDTO Get(int productOrderId)
        {
            return _productOrderService.GetProductOrderById(productOrderId);
        }

      
        [Authorize]
        public IHttpActionResult Post([FromBody]ProductOrderDTO productOrderDTO)
        {
            if (productOrderDTO == null)
                return BadRequest("Argument Null");
            //Create New Customer
            _productOrderService.AddProductOrder(productOrderDTO);

            return Ok();

        }

        //Put api/Customer/5
        public IHttpActionResult Put(int customerid, [FromBody]ProductOrderDTO productOrderDTO)
        {
            if (productOrderDTO == null)
                return BadRequest("Argument Null");
            //Update New Customer
            _productOrderService.UpdateProductOrder(productOrderDTO);

            return Ok();
        }

        public void Delete(int id)
        {
            //Delete Customer
            _productOrderService.DeleteProductOrder(id);
        }
    }
}
