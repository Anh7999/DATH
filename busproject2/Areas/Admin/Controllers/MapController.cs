using busproject2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace busproject2.Areas.Admin.Controllers
{
    public class MapController : BaseController
    {
        // GET: Admin/Map
        private Model1 db = new Model1();

        public ActionResult Index()
        {
           ViewBag.ListTuyen = TuyenXe.getAllTuyen();
            return View();
        }

      

    }
}