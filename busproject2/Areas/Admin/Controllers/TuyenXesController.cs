using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using busproject2.Models;

namespace busproject2.Areas.Admin.Controllers
{
    public class TuyenXesController : BaseController
    {
        private Model1 db = new Model1();

        // GET: Admin/TuyenXes
        public ActionResult Index()
        {
            return View(db.TuyenXes.ToList());
        }

        // GET: Admin/TuyenXes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TuyenXe tuyenXe = db.TuyenXes.Find(id);
            if (tuyenXe == null)
            {
                return HttpNotFound();
            }
            return View(tuyenXe);
        }

        // GET: Admin/TuyenXes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/TuyenXes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaTuyen,TenTuyen,ThoiGianBatDau,ThoiGianKetThuc,LoaiTuyen")] TuyenXe tuyenXe)
        {
            if (ModelState.IsValid)
            {
                db.TuyenXes.Add(tuyenXe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tuyenXe);
        }

        // GET: Admin/TuyenXes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TuyenXe tuyenXe = db.TuyenXes.Find(id);
            if (tuyenXe == null)
            {
                return HttpNotFound();
            }
            return View(tuyenXe);
        }

        // POST: Admin/TuyenXes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaTuyen,TenTuyen,ThoiGianBatDau,ThoiGianKetThuc,LoaiTuyen")] TuyenXe tuyenXe)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tuyenXe).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tuyenXe);
        }

        // GET: Admin/TuyenXes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TuyenXe tuyenXe = db.TuyenXes.Find(id);
            if (tuyenXe == null)
            {
                return HttpNotFound();
            }
            return View(tuyenXe);
        }

        // POST: Admin/TuyenXes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TuyenXe tuyenXe = db.TuyenXes.Find(id);
            db.TuyenXes.Remove(tuyenXe);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
