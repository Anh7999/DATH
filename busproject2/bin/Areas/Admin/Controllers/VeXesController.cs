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
    public class VeXesController : BaseController
    {
        private Model1 db = new Model1();

        // GET: Admin/VeXes
        public ActionResult Index()
        {
            return View(db.VeXes.ToList());
        }

        // GET: Admin/VeXes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VeXe veXe = db.VeXes.Find(id);
            if (veXe == null)
            {
                return HttpNotFound();
            }
            return View(veXe);
        }

        // GET: Admin/VeXes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/VeXes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaVe,LoaiVe,Gia")] VeXe veXe)
        {
            if (ModelState.IsValid)
            {
                db.VeXes.Add(veXe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(veXe);
        }

        // GET: Admin/VeXes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VeXe veXe = db.VeXes.Find(id);
            if (veXe == null)
            {
                return HttpNotFound();
            }
            return View(veXe);
        }

        // POST: Admin/VeXes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaVe,LoaiVe,Gia")] VeXe veXe)
        {
            if (ModelState.IsValid)
            {
                db.Entry(veXe).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(veXe);
        }

        // GET: Admin/VeXes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            VeXe veXe = db.VeXes.Find(id);
            if (veXe == null)
            {
                return HttpNotFound();
            }
            return View(veXe);
        }

        // POST: Admin/VeXes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            VeXe veXe = db.VeXes.Find(id);
            db.VeXes.Remove(veXe);
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
