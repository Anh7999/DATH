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
    public class XesController : BaseController
    {
        private Model1 db = new Model1();

        // GET: Admin/Xes
        public ActionResult Index()
        {
            var xes = db.Xes.Include(x => x.TuyenXe);
            return View(xes.ToList());
        }

        // GET: Admin/Xes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Xe xe = db.Xes.Find(id);
            if (xe == null)
            {
                return HttpNotFound();
            }
            return View(xe);
        }

        // GET: Admin/Xes/Create
        public ActionResult Create()
        {
            ViewBag.MaTuyen = new SelectList(db.TuyenXes, "MaTuyen", "TenTuyen");
            return View();
        }

        // POST: Admin/Xes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaXe,BienSo,LoaiXe,TinhTrangXe,_long,lat,MaTuyen")] Xe xe)
        {
            if (ModelState.IsValid)
            {
                db.Xes.Add(xe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaTuyen = new SelectList(db.TuyenXes, "MaTuyen", "TenTuyen", xe.MaTuyen);
            return View(xe);
        }

        // GET: Admin/Xes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Xe xe = db.Xes.Find(id);
            if (xe == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaTuyen = new SelectList(db.TuyenXes, "MaTuyen", "TenTuyen", xe.MaTuyen);
            return View(xe);
        }

        // POST: Admin/Xes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaXe,BienSo,LoaiXe,TinhTrangXe,_long,lat,MaTuyen")] Xe xe)
        {
            if (ModelState.IsValid)
            {
                db.Entry(xe).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaTuyen = new SelectList(db.TuyenXes, "MaTuyen", "TenTuyen", xe.MaTuyen);
            return View(xe);
        }

        // GET: Admin/Xes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Xe xe = db.Xes.Find(id);
            if (xe == null)
            {
                return HttpNotFound();
            }
            return View(xe);
        }

        // POST: Admin/Xes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Xe xe = db.Xes.Find(id);
            db.Xes.Remove(xe);
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
