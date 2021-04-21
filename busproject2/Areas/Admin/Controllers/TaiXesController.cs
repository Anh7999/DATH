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
    public class TaiXesController : BaseController
    {
        private Model1 db = new Model1();

        // GET: Admin/TaiXes
        public ActionResult Index()
        {
            return View(db.TaiXes.ToList());
        }

        // GET: Admin/TaiXes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TaiXe taiXe = db.TaiXes.Find(id);
            if (taiXe == null)
            {
                return HttpNotFound();
            }
            return View(taiXe);
        }

        // GET: Admin/TaiXes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/TaiXes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaTaiXe,HoTen,NgaySinh,GioiTinh,SDT,Gmail,HinhAnh,QueQuan,DiaChi,NgayBatDauHopDong,NgayKetThucHopDong,Luong,BangLai,ChucVu")] TaiXe taiXe)
        {
            if (ModelState.IsValid)
            {
                db.TaiXes.Add(taiXe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(taiXe);
        }

        // GET: Admin/TaiXes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TaiXe taiXe = db.TaiXes.Find(id);
            if (taiXe == null)
            {
                return HttpNotFound();
            }
            return View(taiXe);
        }

        // POST: Admin/TaiXes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaTaiXe,HoTen,NgaySinh,GioiTinh,SDT,Gmail,HinhAnh,QueQuan,DiaChi,NgayBatDauHopDong,NgayKetThucHopDong,Luong,BangLai,ChucVu")] TaiXe taiXe)
        {
            if (ModelState.IsValid)
            {
                db.Entry(taiXe).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(taiXe);
        }

        // GET: Admin/TaiXes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TaiXe taiXe = db.TaiXes.Find(id);
            if (taiXe == null)
            {
                return HttpNotFound();
            }
            return View(taiXe);
        }

        // POST: Admin/TaiXes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TaiXe taiXe = db.TaiXes.Find(id);
            db.TaiXes.Remove(taiXe);
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
