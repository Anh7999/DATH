using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace busproject2.Areas.Admin.Controllers
{
    public class BaseController : Controller
    {
        // GET: Admin/Base
        public BaseController()
        {
            //bay loi dang nhap

            if (System.Web.HttpContext.Current.Session["UserAdmin"].Equals(""))
            {
                //chuyen huong trang
                //return RedirectToAction("");
                System.Web.HttpContext.Current.Response.Redirect("~/Admin/login");
            }
        }
    }
}