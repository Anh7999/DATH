using System.Web.Mvc;

namespace busproject2.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {

            context.MapRoute(
               "AdminLogin",
               "Admin/Login",
               new { Controller = "Login", action = "Login", id = UrlParameter.Optional }
           );

          

            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new { Controller="Default" ,action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}