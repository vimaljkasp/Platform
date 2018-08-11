using Platform.Service;
using Platform.Utilities.ExceptionHandler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace Platform.Controller
{
    [Route("api/Customers")]
    public class CustomersController : ApiController
    {

        private readonly ICustomerService _customerService;

        public CustomersController(ICustomerService customerService)
        {
            _customerService = customerService;
        }

        // GET api/Customer
     
       public IEnumerable<CustomerDto> Get()
        {
            
            return _customerService.GetAllCustomers();
      
        }


        //GET api/Customer/id
        [Route("api/customers/{id}")]
        public CustomerDto Get(int id)
        {
            return _customerService.GetCustomerById(id);
        }

        //Post api/Customer
      
        public IHttpActionResult Post([FromBody]CustomerDto customer)
        {
            try
            {
                if (customer == null)
                    return BadRequest("Argument Null");
                //Create New Customer
                _customerService.AddCustomer(customer);

                return Ok();
            }
            catch (PlatformModuleException ex)
            {
                //Write Log Here
                return BadRequest(ex.Message);
            }
        }

        //Put api/Customer/5
     [Route("api/customers/{id}")]
        public IHttpActionResult Put(int id,[FromBody]CustomerDto customerDTO)
        {
            customerDTO.CustomerId = id;
            if (customerDTO == null)
                return BadRequest("Argument Null");
            //Update New Customer
            _customerService.UpdateCustomer(customerDTO);

            return Ok();
        }

        [Route("api/customers/{id}")]
        public void Delete(int id)
        {
            //Delete Customer
            _customerService.DeleteCustomer(id);
        }
    }
}
