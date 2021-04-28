
using busproject2.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace busproject2.Areas.Admin.Controllers
{
    public class MapController : Controller
    {
        // GET: Admin/Map
        private Model1 db = new Model1();

        public ActionResult Index(int? id)
        {
            ViewBag.ListTuyen = TuyenXe.getAllTuyen();
            if (id != null)
            {
                ViewBag.XeByMaTuyen = Xe.GetAllBusByMaTuyen((int)id);
            }
            ViewBag.ListXe = JsonConvert.SerializeObject(Xe.GetAllBus());
            //ViewBag.ListTuyen.ListTuyenJs = JsonConvert.SerializeObject(TuyenXe.getAllTuyen());
            return View();
        }
    }
}