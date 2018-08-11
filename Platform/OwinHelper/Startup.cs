using Owin;
using Platform.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;
using Unity;
using Unity.Lifetime;
using Platform;
using Microsoft.Owin.Security.Jwt;
using Microsoft.IdentityModel.Tokens;
using System.Web.Http.Filters;
using System.Web.Http.Controllers;
using System.Net;
using System.Net.Http;
using FluentValidation.WebApi;
using System.Web.Http.ExceptionHandling;
using System.Configuration;

namespace Platform
{
   public class Startup
    {
       
        public void Configuration(IAppBuilder appBuilder)
        {
            HttpConfiguration config = new HttpConfiguration();

            //For Dependency Injection
            Register(config);

            //For JWT Security Token 
            ConfigureAuthApp(appBuilder);

            //For Creating Custom Response Header
            config.MessageHandlers.Add(new ResponseWrappingHandler());

            //For Model Validation
            config.Filters.Add(new ValidateModelStateFilter());

            config.Services.Replace(typeof(IExceptionHandler), new GlobalExceptionHandler());
            config.Services.Add(typeof(IExceptionLogger), new GlobalErrorLogger());

            config.MapHttpAttributeRoutes();
            //For Route Mechanism
            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
                );
         

            //Invoke fluent validation
            FluentValidationModelValidatorProvider.Configure(config);
            appBuilder.UseCors(Microsoft.Owin.Cors.CorsOptions.AllowAll);

            appBuilder.UseWebApi(config);
        }

        public static void Register(HttpConfiguration config)
        {
            var container = new UnityContainer();
            container.RegisterType<ICustomerService, CustomerService>(new HierarchicalLifetimeManager());
            container.RegisterType<IEmployeeService, EmployeeService>(new HierarchicalLifetimeManager());
            container.RegisterType<IProductOrderService, ProductOrderService>(new HierarchicalLifetimeManager());
            container.RegisterType<ISiteService, SiteService>(new HierarchicalLifetimeManager());
            container.RegisterType<IProductService, ProductService>(new HierarchicalLifetimeManager());
            config.DependencyResolver = new UnityResolver(container);
            
        }

        public void ConfigureAuthApp(IAppBuilder appBuilder)
        {
            string UrlAddress = ConfigurationManager.AppSettings["BaseUri"].ToString();
            JwtBearerAuthenticationOptions jwtBearerAuthenticationOptions = new JwtBearerAuthenticationOptions();
            jwtBearerAuthenticationOptions.TokenValidationParameters =
               new TokenValidationParameters
               {
                   ValidateIssuer = true,
                   ValidateAudience = true,
                   ValidateLifetime = true,
                   ValidateIssuerSigningKey = true,
                   ValidIssuer = UrlAddress,
                   ValidAudience = UrlAddress,
                   IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("PlatformSecretKey"))
               };


            appBuilder.UseJwtBearerAuthentication(jwtBearerAuthenticationOptions);
        }
    }

    public class ValidateModelStateFilter : ActionFilterAttribute
    {
        public override void OnActionExecuting(HttpActionContext actionContext)
        {
            if (!actionContext.ModelState.IsValid)
            {
                actionContext.Response = actionContext.Request.CreateErrorResponse(HttpStatusCode.BadRequest, actionContext.ModelState);
            }
        }
    }


}
